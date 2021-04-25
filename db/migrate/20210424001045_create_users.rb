class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :cwid
      t.string :concentration
      t.integer :advisor_id
      t.string :encrypted_password
      t.integer :role
      t.string :remember_token

      t.timestamps
    end
  end
end
