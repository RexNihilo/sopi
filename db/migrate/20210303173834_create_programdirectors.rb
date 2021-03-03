class CreateProgramdirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :programdirectors do |t|
      t.string :Name
      t.integer :CWID
      t.timestamps
    end
  end
end
