class StudyCardsController < ApplicationController
  allow_unauthenticated_access

  def show
    @study_card = StudyCard.find(params[:id])
    @previous_card = @study_card.previous_card
    @next_card = @study_card.next_card
    @card_number = @study_card.position
    @total_cards = @study_card.study_deck.study_cards.count

    return unless authenticated?

    @study_card_progress = Current.user.study_card_progresses.find_or_create_by!(
      study_card: @study_card
    )

    @study_card_progress.update!(last_studied_at: Time.current)

    @question_attempts = Current.user
                                     .question_attempts
                                     .where(question: @study_card.questions)
                                     .index_by(&:question_id)

    load_completion_results
  end

  private

  def load_completion_results
    @total_questions = @study_card.questions.count
    @questions_answered = @question_attempts.count
    @card_completed = @questions_answered >= @total_questions

    return unless @card_completed

    @correct_answers = @question_attempts.values.count(&:correct?)
    @missed_attempts = @question_attempts.values.reject(&:correct?)
    @missed_count = @missed_attempts.count

    @score_percentage =
      if @total_questions.zero?
        0
      else
        ((@correct_answers.to_f / @total_questions) * 100).round
      end
  end
end
