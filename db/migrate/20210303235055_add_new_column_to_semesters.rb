class AddNewColumnToSemesters < ActiveRecord::Migration[6.1]
  def change
    add_column :semesters, :season, :string
    add_column :semesters, :year, :int
  end
end
