class Removeconstraints < ActiveRecord::Migration[6.1]
  def change
    change_column :courses, :semesters_id, :bigint, :null => true
    change_column :semesters, :plan_id, :bigint, :null => true
    change_column :plans, :student_id, :bigint, :null => true
  end
end
