class FixingThings < ActiveRecord::Migration[6.1]
  def change
    remove_column :plans, :CWID
  end
end
