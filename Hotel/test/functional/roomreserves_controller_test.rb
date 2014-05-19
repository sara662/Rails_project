require 'test_helper'

class RoomreservesControllerTest < ActionController::TestCase
  setup do
    @roomreserf = roomreserves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roomreserves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roomreserf" do
    assert_difference('Roomreserve.count') do
      post :create, roomreserf: @roomreserf.attributes
    end

    assert_redirected_to roomreserf_path(assigns(:roomreserf))
  end

  test "should show roomreserf" do
    get :show, id: @roomreserf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roomreserf
    assert_response :success
  end

  test "should update roomreserf" do
    put :update, id: @roomreserf, roomreserf: @roomreserf.attributes
    assert_redirected_to roomreserf_path(assigns(:roomreserf))
  end

  test "should destroy roomreserf" do
    assert_difference('Roomreserve.count', -1) do
      delete :destroy, id: @roomreserf
    end

    assert_redirected_to roomreserves_path
  end
end
