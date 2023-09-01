class CreateSchools < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :scl_names
      t.string :scl_mob_no

      t.timestamps
    end
  end
end
