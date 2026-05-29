class StudyCardsController < ApplicationController
  def show
    @study_card = StudyCard.find(params[:id])
  end
end