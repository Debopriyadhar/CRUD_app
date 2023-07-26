class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :phone_no
      t.string :email
      t.string :address
      t.string :guardian_name
      t.float :madhyamik_percentage
      t.string :hs_percentage

      t.timestamps
    end
  end
end
