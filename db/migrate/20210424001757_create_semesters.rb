class CreateSemesters < ActiveRecord::Migration[6.1]
  def change
    create_table :semesters do |t|
      t.string :course1, default: "Unassigned"
      t.string :course2, default: "Unassigned"
      t.string :course3, default: "Unassigned"
      t.string :course4, default: "Unassigned"
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
