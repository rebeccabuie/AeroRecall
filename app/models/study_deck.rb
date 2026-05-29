class StudyDeck < ApplicationRecord
  has_many :study_cards, dependent: :destroy
end