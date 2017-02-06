require 'test_helper'

class DugeonsControllerTest < ActionController::TestCase
  setup do
    @dugeon = dugeons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dugeons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dugeon" do
    assert_difference('Dugeon.count') do
      post :create, dugeon: { difficulty: @dugeon.difficulty, loot: @dugeon.loot, monster: @dugeon.monster, quantity: @dugeon.quantity, special_ability: @dugeon.special_ability }
    end

    assert_redirected_to dugeon_path(assigns(:dugeon))
  end

  test "should show dugeon" do
    get :show, id: @dugeon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dugeon
    assert_response :success
  end

  test "should update dugeon" do
    patch :update, id: @dugeon, dugeon: { difficulty: @dugeon.difficulty, loot: @dugeon.loot, monster: @dugeon.monster, quantity: @dugeon.quantity, special_ability: @dugeon.special_ability }
    assert_redirected_to dugeon_path(assigns(:dugeon))
  end

  test "should destroy dugeon" do
    assert_difference('Dugeon.count', -1) do
      delete :destroy, id: @dugeon
    end

    assert_redirected_to dugeons_path
  end
end
