class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  has_many :study_card_progresses, dependent: :destroy
  has_many :progressed_study_cards, through: :study_card_progresses, source: :study_card

  has_many :question_attempts, dependent: :destroy

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
