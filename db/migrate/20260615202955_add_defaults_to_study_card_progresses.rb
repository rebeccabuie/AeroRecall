class AddDefaultsToStudyCardProgresses < ActiveRecord::Migration[8.1]
  def change
    change_column_default :study_card_progresses, :questions_answered, from: nil, to: 0
    change_column_default :study_card_progresses, :correct_answers, from: nil, to: 0
    change_column_default :study_card_progresses, :completed, from: nil, to: false
  end
end
