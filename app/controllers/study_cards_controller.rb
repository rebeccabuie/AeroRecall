class StudyCardsController < ApplicationController
  def show
    @study_card = StudyCard.find(params[:id])
    @next_card = @study_card.next_card
  end
end