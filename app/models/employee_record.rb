class EmployeeRecord < ActiveRecord::Base
  attr_accessible :address, :comments, :designation, :dob, :doj, :email, :fore_name, :gender, :mobile, :nick_name, :phone, :postal_code, :sur_name, :title, :user_name
end
