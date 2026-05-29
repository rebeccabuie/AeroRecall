class StudyCard < ApplicationRecord
  belongs_to :study_deck

  has_many :questions, dependent: :destroy
  has_one_attached :infographic
end