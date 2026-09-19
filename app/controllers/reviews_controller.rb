class ReviewsController < ApplicationController
  before_action :require_authentication

  def index
    if session[:review_question_ids].present?
      redirect_to review_path
      return
    end

    @review_complete = true
  end

  def show
    if params[:study_card_id].present?
      start_missed_review_session(params[:study_card_id])
    end

    if params[:answered_id].present?
      @question = Current.user.question_attempts
                              .find_by!(question_id: params[:answered_id])
                              .question

      @study_card = @question.study_card
      @answered = true
      @correct = params[:result] == "correct"
      @remaining_count = remaining_review_count
      return
    end

    @question = next_review_question

    if @question.nil?
      finish_review_session
      redirect_to reviews_path
      return
    end

    @study_card = @question.study_card
    @remaining_count = remaining_review_count
  end

  def answer
    @question = Question.find(params[:id])

    selected_answer = params[:answer]
    correct = selected_answer == @question.correct_option

    finish_review_question(@question.id, correct: correct)

    redirect_to review_path(
      answered_id: @question.id,
      result: correct ? "correct" : "incorrect"
    )
  end

  private

  def start_missed_review_session(study_card_id)
    study_card = StudyCard.find(study_card_id)

    missed_question_ids =
      Current.user
             .question_attempts
             .where(
               question: study_card.questions,
               correct: false
             )
             .order(:created_at)
             .pluck(:question_id)

    session[:review_question_ids] = missed_question_ids
    session[:review_retried_ids] = []
    session[:review_study_card_id] = study_card.id
  end

  def review_question_ids
    Array(session[:review_question_ids]).map(&:to_i)
  end

  def retried_ids
    Array(session[:review_retried_ids]).map(&:to_i)
  end

  def next_review_question
    question_id = review_question_ids.first

    return nil unless question_id

    Question.find_by(id: question_id)
  end

  def finish_review_question(question_id, correct:)
    ids = review_question_ids
    ids.delete(question_id)

    if !correct && !retried_ids.include?(question_id)
      ids << question_id

      retries = retried_ids
      retries << question_id

      session[:review_retried_ids] = retries
    end

    session[:review_question_ids] = ids
  end

  def remaining_review_count
    review_question_ids.count
  end

  def finish_review_session
    session.delete(:review_question_ids)
    session.delete(:review_retried_ids)
    end
end
