require 'test_helper'

class RecipiesControllerTest < ActionController::TestCase
  setup do
    @recipy = recipies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipy" do
    assert_difference('Recipy.count') do
      post :create, recipy: { amount: @recipy.amount, cultural_preferance: @recipy.cultural_preferance, description: @recipy.description, dietitian_tips: @recipy.dietitian_tips, ingredients: @recipy.ingredients, unit_measure: @recipy.unit_measure, user_id: @recipy.user_id }
    end

    assert_redirected_to recipy_path(assigns(:recipy))
  end

  test "should show recipy" do
    get :show, id: @recipy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipy
    assert_response :success
  end

  test "should update recipy" do
    patch :update, id: @recipy, recipy: { amount: @recipy.amount, cultural_preferance: @recipy.cultural_preferance, description: @recipy.description, dietitian_tips: @recipy.dietitian_tips, ingredients: @recipy.ingredients, unit_measure: @recipy.unit_measure, user_id: @recipy.user_id }
    assert_redirected_to recipy_path(assigns(:recipy))
  end

  test "should destroy recipy" do
    assert_difference('Recipy.count', -1) do
      delete :destroy, id: @recipy
    end

    assert_redirected_to recipies_path
  end
end
