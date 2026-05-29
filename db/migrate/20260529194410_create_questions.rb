class CreateQuestions < ActiveRecord::Migration[8.1]
  def change
    create_table :questions do |t|
      t.references :study_card, null: false, foreign_key: true
      t.text :question_text
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :correct_option
      t.text :explanation
      t.integer :position

      t.timestamps
    end
  end
end
