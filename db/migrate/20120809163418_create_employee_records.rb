class CreateEmployeeRecords < ActiveRecord::Migration
  def change
    create_table :employee_records do |t|
      t.string :title
      t.string :fore_name
      t.string :user_name
      t.string :sur_name
      t.string :nick_name
      t.string :dob
      t.string :gender
      t.string :designation
      t.string :phone
      t.string :mobile
      t.string :postal_code
      t.string :email
      t.string :address
      t.string :doj
      t.string :comments

      t.timestamps
    end
  end
end
