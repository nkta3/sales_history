require 'test_helper'

class HistoriesControllerTest < ActionController::TestCase
  setup do
    @history = histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history" do
    assert_difference('History.count') do
      post :create, history: { activity_time: @history.activity_time, customer_id: @history.customer_id, detail: @history.detail, sales_achievement: @history.sales_achievement, sales_category: @history.sales_category }
    end

    assert_redirected_to history_path(assigns(:history))
  end

  test "should show history" do
    get :show, id: @history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history
    assert_response :success
  end

  test "should update history" do
    patch :update, id: @history, history: { activity_time: @history.activity_time, customer_id: @history.customer_id, detail: @history.detail, sales_achievement: @history.sales_achievement, sales_category: @history.sales_category }
    assert_redirected_to history_path(assigns(:history))
  end

  test "should destroy history" do
    assert_difference('History.count', -1) do
      delete :destroy, id: @history
    end

    assert_redirected_to histories_path
  end
end
