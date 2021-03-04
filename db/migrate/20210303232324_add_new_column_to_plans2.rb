class AddNewColumnToPlans2 < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :nameofplan, :string
  end
end
