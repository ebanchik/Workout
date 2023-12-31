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

ActiveRecord::Schema[7.0].define(version: 2023_12_28_032845) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.string "reps"
    t.string "break_t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "style"
    t.string "day"
  end

  create_table "legs", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.string "reps"
    t.string "break_t"
    t.string "style"
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoulders", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.string "reps"
    t.string "break_t"
    t.string "style"
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upper1s", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.string "reps"
    t.string "break_t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "style"
    t.string "day"
  end

  create_table "upper2s", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.string "break_t"
    t.string "style"
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reps"
  end

end
