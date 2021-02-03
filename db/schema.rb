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

ActiveRecord::Schema.define(version: 2021_01_23_074321) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_books_on_name"
  end

  create_table "custaccs", force: :cascade do |t|
    t.integer "accno"
    t.string "acctype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_custaccs_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "add"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empaccs", force: :cascade do |t|
    t.integer "accno"
    t.string "acctype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "emp_id", null: false
    t.index ["emp_id"], name: "index_empaccs_on_emp_id"
  end

  create_table "emps", force: :cascade do |t|
    t.string "name"
    t.string "add"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "information", force: :cascade do |t|
    t.integer "rollno"
    t.string "username"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rollno"], name: "index_information_on_rollno"
  end

  create_table "userlogins", force: :cascade do |t|
    t.string "name"
    t.bigint "mobile"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_userlogins_on_email", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_users_on_name"
  end

  add_foreign_key "empaccs", "emps"
end
