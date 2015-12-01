require 'test_helper'

class StaffInfosControllerTest < ActionController::TestCase
  setup do
    @staff_info = staff_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_info" do
    assert_difference('StaffInfo.count') do
      post :create, staff_info: { name: @staff_info.name }
    end

    assert_redirected_to staff_info_path(assigns(:staff_info))
  end

  test "should show staff_info" do
    get :show, id: @staff_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_info
    assert_response :success
  end

  test "should update staff_info" do
    patch :update, id: @staff_info, staff_info: { name: @staff_info.name }
    assert_redirected_to staff_info_path(assigns(:staff_info))
  end

  test "should destroy staff_info" do
    assert_difference('StaffInfo.count', -1) do
      delete :destroy, id: @staff_info
    end

    assert_redirected_to staff_infos_path
  end
end
