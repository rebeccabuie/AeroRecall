class DashboardController < ApplicationController
  allow_unauthenticated_access

  def index
    @study_decks = StudyDeck.includes(:study_cards)
    @deck_progress = current_deck_progress

    calculate_overall_progress

    @continue_deck =
      if authenticated?
        @study_decks.find do |deck|
          progress = @deck_progress[deck.id]
          progress && progress[:percentage].between?(1, 99)
        end
      end

    @continue_deck ||= @study_decks.find do |deck|
      progress = @deck_progress[deck.id]
      progress.nil? || progress[:percentage] < 100
    end
  end

  private

  def current_deck_progress
    return {} unless authenticated?

    progress = {}

    @study_decks.each do |deck|
      total_cards = deck.study_cards.size

      completed_cards =
        Current.user
               .study_card_progresses
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

  def calculate_overall_progress
    @total_cards_count = @study_decks.sum { |deck| deck.study_cards.size }

    @completed_cards_count =
      if authenticated?
        Current.user.study_card_progresses
                    .where(completed: true)
                    .count
      else
        0
      end

    @overall_progress_percentage =
      if @total_cards_count.zero?
        0
      else
        ((@completed_cards_count.to_f / @total_cards_count) * 100).round
      end
  end
end
