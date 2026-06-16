class StudyDecksController < ApplicationController
  allow_unauthenticated_access

  def index
    @study_decks = StudyDeck.all
    @deck_progress = current_deck_progress
  end

  def show
    @study_deck = StudyDeck.find(params[:id])
    @study_card_progresses = current_user_progresses

    @total_cards_count = @study_deck.study_cards.count
    @completed_cards_count = @study_card_progresses.values.count(&:completed?)

    @deck_progress_percentage =
      if @total_cards_count.zero?
        0
      else
        ((@completed_cards_count.to_f / @total_cards_count) * 100).round
      end
  end

  private

  def current_user_progresses
    return {} unless authenticated?

    Current.user
           .study_card_progresses
           .where(study_card: @study_deck.study_cards)
           .index_by(&:study_card_id)
  end

  def current_deck_progress
    return {} unless authenticated?

    progress = {}

    StudyDeck.includes(:study_cards).find_each do |deck|
      total_cards = deck.study_cards.count

      completed_cards = Current.user.study_card_progresses
                                    .where(study_card: deck.study_cards, completed: true)
                                    .count

      percentage =
        if total_cards.zero?
          0
        else
          ((completed_cards.to_f / total_cards) * 100).round
        end

      progress[deck.id] = {
        completed_cards: completed_cards,
        total_cards: total_cards,
        percentage: percentage
      }
    end

    progress
  end
end
