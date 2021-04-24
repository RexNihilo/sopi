class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :body
      t.references :student, index: true
      t.references :professor, index: true

      t.timestamps
    end
  end
end
