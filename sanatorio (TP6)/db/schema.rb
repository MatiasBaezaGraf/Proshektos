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

ActiveRecord::Schema.define(version: 2020_04_29_223145) do

  create_table "medics", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "speciality_id"
    t.index ["speciality_id"], name: "index_medics_on_speciality_id"
  end

  create_table "os", force: :cascade do |t|
    t.string "name"
    t.integer "discount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "dni"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "os_id"
    t.integer "social_work_id"
    t.index ["os_id"], name: "index_patients_on_os_id"
    t.index ["social_work_id"], name: "index_patients_on_social_work_id"
  end

  create_table "social_works", force: :cascade do |t|
    t.string "name"
    t.integer "discount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.integer "charge"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turns", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "medic_id"
    t.integer "patient_id"
    t.float "price"
    t.datetime "date"
    t.index ["medic_id"], name: "index_turns_on_medic_id"
    t.index ["patient_id"], name: "index_turns_on_patient_id"
  end

  add_foreign_key "medics", "specialities"
  add_foreign_key "patients", "os", column: "os_id"
  add_foreign_key "patients", "social_works"
  add_foreign_key "turns", "medics"
  add_foreign_key "turns", "patients"
end
