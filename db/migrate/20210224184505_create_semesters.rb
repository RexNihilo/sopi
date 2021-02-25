class CreateSemesters < ActiveRecord::Migration[6.1]
  def change
    create_table :semesters do |t|
      t.string :course1
      t.string :course2
      t.string :course3
      t.string :course4

      t.timestamps
    end
  end
end