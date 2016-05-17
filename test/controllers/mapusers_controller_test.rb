require 'test_helper'

class MapusersControllerTest < ActionController::TestCase
  setup do
    @mapuser = mapusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mapusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mapuser" do
    assert_difference('Mapuser.count') do
      post :create, mapuser: { address: @mapuser.address, description: @mapuser.description, latitude: @mapuser.latitude, longitude: @mapuser.longitude, title: @mapuser.title }
    end

    assert_redirected_to mapuser_path(assigns(:mapuser))
  end

  test "should show mapuser" do
    get :show, id: @mapuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mapuser
    assert_response :success
  end

  test "should update mapuser" do
    patch :update, id: @mapuser, mapuser: { address: @mapuser.address, description: @mapuser.description, latitude: @mapuser.latitude, longitude: @mapuser.longitude, title: @mapuser.title }
    assert_redirected_to mapuser_path(assigns(:mapuser))
  end

  test "should destroy mapuser" do
    assert_difference('Mapuser.count', -1) do
      delete :destroy, id: @mapuser
    end

    assert_redirected_to mapusers_path
  end
end
