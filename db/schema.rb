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

ActiveRecord::Schema[7.0].define(version: 2023_03_24_112216) do
  create_table "addresses", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "first_line"
    t.string "second_line"
    t.string "landmark"
    t.string "city"
    t.string "district"
    t.string "state"
    t.string "postal_code"
    t.integer "employee_id"
    t.string "type"
    t.index ["type", "employee_id"], name: "index_addresses_on_type_and_employee_id"
  end

  create_table "contacts", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "contact_no"
    t.integer "employee_id"
  end

  create_table "documents", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "document_name"
  end

  create_table "employee_documents", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "document_id"
  end

  create_table "employees", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "dob"
    t.string "experience"
    t.string "department"
    t.string "designation"
    t.date "joining_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
