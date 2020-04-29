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

ActiveRecord::Schema.define(version: 2020_04_22_200535) do

  create_table "discharges", force: :cascade do |t|
    t.integer "liters"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "station_id"
    t.integer "load_id"
    t.index ["load_id"], name: "index_discharges_on_load_id"
    t.index ["station_id"], name: "index_discharges_on_station_id"
  end

  create_table "loads", force: :cascade do |t|
    t.integer "liters"
    t.datetime "date"
    t.integer "liter_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "truck_id"
    t.index ["truck_id"], name: "index_loads_on_truck_id"
  end

  create_table "stations", force: :cascade do |t|
    t.string "adress"
    t.string "flag"
    t.integer "max_liters"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string "patent"
    t.string "description"
    t.integer "max_liters"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "discharges", "loads"
  add_foreign_key "discharges", "stations"
  add_foreign_key "loads", "trucks"
end
