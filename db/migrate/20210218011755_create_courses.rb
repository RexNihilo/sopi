class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :prefix
      t.string :name
      t.integer :number
      t.integer :section

      t.timestamps
    end
  end
end
