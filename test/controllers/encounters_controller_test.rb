require 'test_helper'

class EncountersControllerTest < ActionController::TestCase
  setup do
    @encounter = encounters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encounters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encounter" do
    assert_difference('Encounter.count') do
      post :create, encounter: { background: @encounter.background, difficulty: @encounter.difficulty, quantity: @encounter.quantity, race: @encounter.race, tempermant: @encounter.tempermant }
    end

    assert_redirected_to encounter_path(assigns(:encounter))
  end

  test "should show encounter" do
    get :show, id: @encounter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @encounter
    assert_response :success
  end

  test "should update encounter" do
    patch :update, id: @encounter, encounter: { background: @encounter.background, difficulty: @encounter.difficulty, quantity: @encounter.quantity, race: @encounter.race, tempermant: @encounter.tempermant }
    assert_redirected_to encounter_path(assigns(:encounter))
  end

  test "should destroy encounter" do
    assert_difference('Encounter.count', -1) do
      delete :destroy, id: @encounter
    end

    assert_redirected_to encounters_path
  end
end
