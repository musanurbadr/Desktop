class CreateStudents < ActiveRecord::Migration[7.2]
  def change
    create_table :students do |t|
      t.text :name
      t.integer :student_number

      t.timestamps
    end
  end
end
