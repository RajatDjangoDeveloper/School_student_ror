class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :stu_name
      t.string :stu_mob_no

      t.timestamps
    end
  end
end
