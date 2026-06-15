class QuestionsController < ApplicationController
  def check_answer
    @question = Question.find(params[:id])
    @study_card = @question.study_card

    @selected_answer = params[:answer]
    @correct = @selected_answer == @question.correct_option

    update_question_attempt_and_progress if authenticated?

    respond_to do |format|
      format.turbo_stream
      format.html { render :check_answer }
    end
  end

  private

  def update_question_attempt_and_progress
    attempt = Current.user.question_attempts.find_or_initialize_by(question: @question)

    return unless attempt.new_record?

    attempt.update!(
      selected_answer: @selected_answer,
      correct: @correct
    )

    progress = Current.user.study_card_progresses.find_or_create_by!(
      study_card: @study_card
    )

    attempts = Current.user.question_attempts.where(question: @study_card.questions)

    questions_answered = attempts.count
    correct_answers = attempts.where(correct: true).count
    card_completed = questions_answered >= @study_card.questions.count

    progress.update!(
      questions_answered: questions_answered,
      correct_answers: correct_answers,
      completed: card_completed,
      completed_at: card_completed ? Time.current : nil,
      last_studied_at: Time.current
    )
  end
end
