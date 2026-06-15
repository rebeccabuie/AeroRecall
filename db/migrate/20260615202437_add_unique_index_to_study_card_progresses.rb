class AddUniqueIndexToStudyCardProgresses < ActiveRecord::Migration[8.1]
  def change
    add_index :study_card_progresses,
              %i[user_id study_card_id],
              unique: true
  end
end
