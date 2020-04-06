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

ActiveRecord::Schema.define(version: 2020_04_05_003924) do

  create_table "accesories_cars", force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "accesory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accesory_id"], name: "index_accesories_cars_on_accesory_id"
    t.index ["car_id"], name: "index_accesories_cars_on_car_id"
  end

  create_table "accessories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "accessories_cars", force: :cascade do |t|
    t.integer "car_id", null: false
    t.integer "accessory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accessory_id"], name: "index_accessories_cars_on_accessory_id"
    t.index ["car_id"], name: "index_accessories_cars_on_car_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.date "foundation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "model"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "doors"
    t.string "color"
    t.integer "brand_id"
    t.integer "classification_id"
    t.integer "structure_id"
    t.index ["brand_id"], name: "index_cars_on_brand_id"
    t.index ["classification_id"], name: "index_cars_on_classification_id"
    t.index ["structure_id"], name: "index_cars_on_structure_id"
  end

  create_table "classifications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "structures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accesories_cars", "accesories"
  add_foreign_key "accesories_cars", "cars"
  add_foreign_key "accessories_cars", "accessories"
  add_foreign_key "accessories_cars", "cars"
  add_foreign_key "cars", "brands"
  add_foreign_key "cars", "classifications"
  add_foreign_key "cars", "structures"
end
