class Addrefrences < ActiveRecord::Migration[6.1]
  def change
   change_table :semesters do |t|
      t.references :plan, null: false, foreign_key: true
    end
    change_table :courses do |t|
      t.references :semesters, null: false, foreign_key: true
    end
  end
end
