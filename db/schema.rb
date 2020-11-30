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

ActiveRecord::Schema.define(version: 2020_11_30_220857) do

  create_table "entries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "routine_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "reps"
    t.string "difficulty"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "routine_id"
  end

  create_table "routine_exercises", force: :cascade do |t|
    t.integer "session_id"
    t.integer "exercise_id"
  end

  create_table "routines", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "routine_exercise_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.integer "height"
  end

end
