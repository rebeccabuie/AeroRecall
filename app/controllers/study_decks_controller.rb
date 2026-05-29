class StudyDecksController < ApplicationController
  def index
    @study_decks = StudyDeck.all
  end

  def show
    @study_deck = StudyDeck.find(params[:id])
  end
end