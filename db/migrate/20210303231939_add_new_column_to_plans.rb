class AddNewColumnToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :CWID, :integer
  end
end
