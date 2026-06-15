class CreateStudyCardProgresses < ActiveRecord::Migration[8.1]
  def change
    create_table :study_card_progresses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :study_card, null: false, foreign_key: true
      t.integer :questions_answered
      t.integer :correct_answers
      t.boolean :completed
      t.datetime :completed_at
      t.datetime :last_studied_at

      t.timestamps
    end
  end
end
