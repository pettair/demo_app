require 'test_helper'

class NorbiMelegsControllerTest < ActionController::TestCase
  setup do
    @norbi_meleg = norbi_melegs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:norbi_melegs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create norbi_meleg" do
    assert_difference('NorbiMeleg.count') do
      post :create, :norbi_meleg => @norbi_meleg.attributes
    end

    assert_redirected_to norbi_meleg_path(assigns(:norbi_meleg))
  end

  test "should show norbi_meleg" do
    get :show, :id => @norbi_meleg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @norbi_meleg.to_param
    assert_response :success
  end

  test "should update norbi_meleg" do
    put :update, :id => @norbi_meleg.to_param, :norbi_meleg => @norbi_meleg.attributes
    assert_redirected_to norbi_meleg_path(assigns(:norbi_meleg))
  end

  test "should destroy norbi_meleg" do
    assert_difference('NorbiMeleg.count', -1) do
      delete :destroy, :id => @norbi_meleg.to_param
    end

    assert_redirected_to norbi_melegs_path
  end
end
