class Makethepainstop < ActiveRecord::Migration[6.1]
  def change

    add_column  :plans, :course1a, :string
    add_column  :plans, :course1b, :string
    add_column  :plans, :course1c, :string
    add_column  :plans, :course1d, :string
    
    add_column  :plans, :semester2, :string
    add_column  :plans, :course2a, :string
    add_column  :plans, :course2b, :string
    add_column  :plans, :course2c, :string
    add_column  :plans, :course2d, :string
    
    add_column  :plans, :semester3, :string
    add_column  :plans, :course3a, :string
    add_column  :plans, :course3b, :string
    add_column  :plans, :course3c, :string
    add_column  :plans, :course3d, :string
    
    add_column  :plans, :semester4, :string
    add_column  :plans, :course4a, :string
    add_column  :plans, :course4b, :string
    add_column  :plans, :course4c, :string
    add_column  :plans, :course4d, :string
  end
end
