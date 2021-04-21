class Omgwhy < ActiveRecord::Migration[6.1]
  def change
    
    add_column  :plans, :semester1, :string

    
  end
end
