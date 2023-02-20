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

ActiveRecord::Schema[7.0].define(version: 2023_02_20_070348) do
  create_table "authors", force: :cascade do |t|
    t.string "au_name"
  end

  create_table "books", force: :cascade do |t|
    t.string "b_name"
    t.integer "authors_id"
    t.index ["authors_id"], name: "index_books_on_authors_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer "movie_id", null: false
    t.integer "screen_id", null: false
    t.integer "theater_id", null: false
    t.string "c_name"
    t.index ["movie_id"], name: "index_customers_on_movie_id"
    t.index ["screen_id"], name: "index_customers_on_screen_id"
    t.index ["theater_id"], name: "index_customers_on_theater_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "theater_id", null: false
    t.string "e_name"
    t.index ["theater_id"], name: "index_employees_on_theater_id"
  end

  create_table "movies", force: :cascade do |t|
    t.integer "screen_id", null: false
    t.string "m_name"
    t.index ["screen_id"], name: "index_movies_on_screen_id"
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screens", force: :cascade do |t|
    t.integer "theater_id", null: false
    t.string "s_name"
    t.index ["theater_id"], name: "index_screens_on_theater_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "t_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "books", "authors", column: "authors_id"
  add_foreign_key "customers", "movies"
  add_foreign_key "customers", "screens"
  add_foreign_key "customers", "theaters"
  add_foreign_key "employees", "theaters"
  add_foreign_key "movies", "screens"
  add_foreign_key "screens", "theaters"
end
