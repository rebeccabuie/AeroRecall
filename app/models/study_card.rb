class StudyCard < ApplicationRecord
  belongs_to :study_deck

  has_many :questions, dependent: :destroy
  has_one_attached :infographic

  has_many :study_card_progresses, dependent: :destroy
  has_many :users_with_progress, through: :study_card_progresses, source: :user

  def next_card
    study_deck.study_cards.where("position > ?", position).order(:position).first
  end
end
