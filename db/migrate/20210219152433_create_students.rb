class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :Name
      t.integer :CWID
      t.string :Concentration
      t.string :Advisor

      t.timestamps
    end
  end
end
