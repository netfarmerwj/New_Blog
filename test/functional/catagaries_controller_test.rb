require 'test_helper'

class CatagariesControllerTest < ActionController::TestCase
  setup do
    @catagary = catagaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catagaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catagary" do
    assert_difference('Catagary.count') do
      post :create, catagary: { name: @catagary.name }
    end

    assert_redirected_to catagary_path(assigns(:catagary))
  end

  test "should show catagary" do
    get :show, id: @catagary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catagary
    assert_response :success
  end

  test "should update catagary" do
    put :update, id: @catagary, catagary: { name: @catagary.name }
    assert_redirected_to catagary_path(assigns(:catagary))
  end

  test "should destroy catagary" do
    assert_difference('Catagary.count', -1) do
      delete :destroy, id: @catagary
    end

    assert_redirected_to catagaries_path
  end
end
