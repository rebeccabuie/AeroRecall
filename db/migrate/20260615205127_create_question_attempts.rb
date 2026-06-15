class CreateQuestionAttempts < ActiveRecord::Migration[8.1]
  def change
    create_table :question_attempts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.string :selected_answer
      t.boolean :correct

      t.timestamps
    end
  end
end
