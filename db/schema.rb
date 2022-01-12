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

ActiveRecord::Schema.define(version: 2022_01_12_061412) do

  create_table "addresses", force: :cascade do |t|
    t.string "category"
    t.string "flat_no"
    t.string "area"
    t.string "street_no"
    t.string "landmark"
    t.string "city"
    t.string "district"
    t.string "state"
    t.string "postal_code"
    t.integer "employee_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "contact_type"
    t.string "contact_no"
    t.integer "employee_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "document_name"
  end

  create_table "employee_documents", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "document_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "dob"
    t.string "experience"
    t.string "department"
    t.string "designation"
    t.date "joining_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
