# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 4) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "county"
    t.string "url"
  end

  create_table "holes", force: :cascade do |t|
    t.bigint "course_id"
    t.integer "hole_number"
    t.integer "yardage"
    t.integer "par"
    t.index ["course_id"], name: "index_holes_on_course_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.float "hcp"
  end

  create_table "scorecards", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "course_id"
    t.integer "score"
    t.date "date_played"
    t.index ["course_id"], name: "index_scorecards_on_course_id"
    t.index ["player_id"], name: "index_scorecards_on_player_id"
  end

  add_foreign_key "holes", "courses"
  add_foreign_key "scorecards", "courses"
  add_foreign_key "scorecards", "players"
end
