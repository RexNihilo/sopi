class Makeplans < ActiveRecord::Migration[6.1]
  def change
    create_table "plans", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "CWID"
    t.string "nameofplan"
    t.bigint "student_id", null: false
    t.index ["student_id"], name: "index_plans_on_student_id"
  end

  end
end
