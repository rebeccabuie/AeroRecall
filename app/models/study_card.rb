class StudyCard < ApplicationRecord
  belongs_to :study_deck

  has_many :questions, dependent: :destroy
  has_one_attached :infographic

  def next_card
    study_deck.study_cards.where("position > ?", position).order(:position).first
  end
end
