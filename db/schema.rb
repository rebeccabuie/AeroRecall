# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_05_29_194410) do
  create_table "questions", force: :cascade do |t|
    t.string "correct_option"
    t.datetime "created_at", null: false
    t.text "explanation"
    t.string "option_a"
    t.string "option_b"
    t.string "option_c"
    t.string "option_d"
    t.integer "position"
    t.text "question_text"
    t.integer "study_card_id", null: false
    t.datetime "updated_at", null: false
    t.index ["study_card_id"], name: "index_questions_on_study_card_id"
  end

  create_table "study_cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "image"
    t.integer "position"
    t.integer "study_deck_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["study_deck_id"], name: "index_study_cards_on_study_deck_id"
  end

  create_table "study_decks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "questions", "study_cards"
  add_foreign_key "study_cards", "study_decks"
end
