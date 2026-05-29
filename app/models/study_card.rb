class StudyCard < ApplicationRecord
  belongs_to :study_deck

  has_many :questions, dependent: :destroy
end