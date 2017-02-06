require 'test_helper'

class CarousingsControllerTest < ActionController::TestCase
  setup do
    @carousing = carousings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carousings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carousing" do
    assert_difference('Carousing.count') do
      post :create, carousing: { dice_roll: @carousing.dice_roll, result: @carousing.result }
    end

    assert_redirected_to carousing_path(assigns(:carousing))
  end

  test "should show carousing" do
    get :show, id: @carousing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carousing
    assert_response :success
  end

  test "should update carousing" do
    patch :update, id: @carousing, carousing: { dice_roll: @carousing.dice_roll, result: @carousing.result }
    assert_redirected_to carousing_path(assigns(:carousing))
  end

  test "should destroy carousing" do
    assert_difference('Carousing.count', -1) do
      delete :destroy, id: @carousing
    end

    assert_redirected_to carousings_path
  end
end
