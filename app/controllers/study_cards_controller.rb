class StudyCardsController < ApplicationController
  def show
    @study_card = StudyCard.find(params[:id])
    @next_card = @study_card.next_card

    @card_number = @study_card.position
    @total_cards = @study_card.study_deck.study_cards.count
  end
end
