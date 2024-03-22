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

ActiveRecord::Schema[7.1].define(version: 2024_03_21_205200) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "highscores", force: :cascade do |t|
    t.integer "player_id"
    t.integer "score"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "item_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_achievements", force: :cascade do |t|
    t.integer "achievement_id"
    t.integer "player_id"
    t.datetime "achieved_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_items", force: :cascade do |t|
    t.integer "player_id"
    t.integer "item_id"
    t.integer "save_id"
    t.integer "container_item_id"
    t.integer "location_x"
    t.integer "location_y"
    t.integer "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "save_point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saves", force: :cascade do |t|
    t.integer "player_id"
    t.integer "save_point"
    t.boolean "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
