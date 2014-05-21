require 'test_helper'

class MyhotelsControllerTest < ActionController::TestCase
  setup do
    @myhotel = myhotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myhotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myhotel" do
    assert_difference('Myhotel.count') do
      post :create, myhotel: @myhotel.attributes
    end

    assert_redirected_to myhotel_path(assigns(:myhotel))
  end

  test "should show myhotel" do
    get :show, id: @myhotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myhotel
    assert_response :success
  end

  test "should update myhotel" do
    put :update, id: @myhotel, myhotel: @myhotel.attributes
    assert_redirected_to myhotel_path(assigns(:myhotel))
  end

  test "should destroy myhotel" do
    assert_difference('Myhotel.count', -1) do
      delete :destroy, id: @myhotel
    end

    assert_redirected_to myhotels_path
  end
end
