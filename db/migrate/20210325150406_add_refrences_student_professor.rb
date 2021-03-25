class AddRefrencesStudentProfessor < ActiveRecord::Migration[6.1]
  def change
   change_table :students do |t|
      t.references :professor, null: false, foreign_key: true
    end
    change_table :professors do |t|
      t.references :programdirector, null: false, foreign_key: true
    end
  end
end
