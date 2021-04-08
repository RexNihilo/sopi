class UserTweeks < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :student, :boolean, null: false, default: false
    add_column :users, :professor, :boolean, null: false, default: false
    add_column :users, :programdirector, :boolean, null: false, default: false
  end
end
