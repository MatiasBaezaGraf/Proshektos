# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_20_201901) do

  create_table "episodes", force: :cascade do |t|
    t.integer "number"
    t.string "title"
    t.datetime "emmited_at"
    t.integer "minutes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "season_id"
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_programs_on_genre_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "number"
    t.datetime "begins_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "serie_id"
    t.integer "program_id"
    t.index ["program_id"], name: "index_seasons_on_program_id"
    t.index ["serie_id"], name: "index_seasons_on_serie_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "genre_id"
    t.index ["genre_id"], name: "index_series_on_genre_id"
  end

  add_foreign_key "episodes", "seasons"
  add_foreign_key "programs", "genres"
  add_foreign_key "seasons", "programs"
  add_foreign_key "seasons", "series", column: "serie_id"
  add_foreign_key "series", "genres"
end
