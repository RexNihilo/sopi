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

ActiveRecord::Schema.define(version: 2021_04_25_190159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.bigint "student_id"
    t.bigint "professor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["professor_id"], name: "index_comments_on_professor_id"
    t.index ["student_id"], name: "index_comments_on_student_id"
  end

  create_table "course_semesters", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.bigint "semester_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_course_semesters_on_course_id"
    t.index ["semester_id"], name: "index_course_semesters_on_semester_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "dept"
    t.integer "number"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_semesters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "cwid"
    t.string "concentration"
    t.integer "advisor_id"
    t.string "encrypted_password"
    t.integer "role"
    t.string "remember_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "course_semesters", "courses"
  add_foreign_key "course_semesters", "semesters"
  add_foreign_key "semesters", "users"
end
