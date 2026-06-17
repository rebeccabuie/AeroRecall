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
  end
end
