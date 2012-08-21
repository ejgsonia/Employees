require 'test_helper'

class EmployeeRecordsControllerTest < ActionController::TestCase
  setup do
    @employee_record = employee_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_record" do
    assert_difference('EmployeeRecord.count') do
      post :create, employee_record: { address: @employee_record.address, comments: @employee_record.comments, designation: @employee_record.designation, dob: @employee_record.dob, doj: @employee_record.doj, email: @employee_record.email, fore_name: @employee_record.fore_name, gender: @employee_record.gender, mobile: @employee_record.mobile, nick_name: @employee_record.nick_name, phone: @employee_record.phone, postal_code: @employee_record.postal_code, sur_name: @employee_record.sur_name, title: @employee_record.title, user_name: @employee_record.user_name }
    end

    assert_redirected_to employee_record_path(assigns(:employee_record))
  end

  test "should show employee_record" do
    get :show, id: @employee_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_record
    assert_response :success
  end

  test "should update employee_record" do
    put :update, id: @employee_record, employee_record: { address: @employee_record.address, comments: @employee_record.comments, designation: @employee_record.designation, dob: @employee_record.dob, doj: @employee_record.doj, email: @employee_record.email, fore_name: @employee_record.fore_name, gender: @employee_record.gender, mobile: @employee_record.mobile, nick_name: @employee_record.nick_name, phone: @employee_record.phone, postal_code: @employee_record.postal_code, sur_name: @employee_record.sur_name, title: @employee_record.title, user_name: @employee_record.user_name }
    assert_redirected_to employee_record_path(assigns(:employee_record))
  end

  test "should destroy employee_record" do
    assert_difference('EmployeeRecord.count', -1) do
      delete :destroy, id: @employee_record
    end

    assert_redirected_to employee_records_path
  end
end
