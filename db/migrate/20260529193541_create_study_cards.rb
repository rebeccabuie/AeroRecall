class CreateStudyCards < ActiveRecord::Migration[8.1]
  def change
    create_table :study_cards do |t|
      t.references :study_deck, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
