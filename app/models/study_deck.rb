class StudyDeck < ApplicationRecord
  has_many :study_cards, dependent: :destroy

  def first_incomplete_card_for(user)
    study_cards.order(:position).detect do |card|
      progress = user.study_card_progresses.find_by(study_card: card)
      progress.blank? || !progress.completed?
    end
  end
end