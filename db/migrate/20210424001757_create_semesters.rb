class CreateSemesters < ActiveRecord::Migration[6.1]
  def change
    create_table :semesters do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
