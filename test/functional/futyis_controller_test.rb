require 'test_helper'

class FutyisControllerTest < ActionController::TestCase
  setup do
    @futyi = futyis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:futyis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create futyi" do
    assert_difference('Futyi.count') do
      post :create, :futyi => @futyi.attributes
    end

    assert_redirected_to futyi_path(assigns(:futyi))
  end

  test "should show futyi" do
    get :show, :id => @futyi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @futyi.to_param
    assert_response :success
  end

  test "should update futyi" do
    put :update, :id => @futyi.to_param, :futyi => @futyi.attributes
    assert_redirected_to futyi_path(assigns(:futyi))
  end

  test "should destroy futyi" do
    assert_difference('Futyi.count', -1) do
      delete :destroy, :id => @futyi.to_param
    end

    assert_redirected_to futyis_path
  end
end
