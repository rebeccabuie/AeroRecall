class AddUniqueIndexToQuestionAttempts < ActiveRecord::Migration[8.1]
  def change
    add_index :question_attempts,
              %i[user_id question_id],
              unique: true
  end
end
