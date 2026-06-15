class Question < ApplicationRecord
  belongs_to :study_card

  has_many :question_attempts, dependent: :destroy
end
