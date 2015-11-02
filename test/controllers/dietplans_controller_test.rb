require 'test_helper'

class DietplansControllerTest < ActionController::TestCase
  setup do
    @dietplan = dietplans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dietplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dietplan" do
    assert_difference('Dietplan.count') do
      post :create, dietplan: { recipy_id: @dietplan.recipy_id, step_id: @dietplan.step_id, title: @dietplan.title, user_id: @dietplan.user_id }
    end

    assert_redirected_to dietplan_path(assigns(:dietplan))
  end

  test "should show dietplan" do
    get :show, id: @dietplan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dietplan
    assert_response :success
  end

  test "should update dietplan" do
    patch :update, id: @dietplan, dietplan: { recipy_id: @dietplan.recipy_id, step_id: @dietplan.step_id, title: @dietplan.title, user_id: @dietplan.user_id }
    assert_redirected_to dietplan_path(assigns(:dietplan))
  end

  test "should destroy dietplan" do
    assert_difference('Dietplan.count', -1) do
      delete :destroy, id: @dietplan
    end

    assert_redirected_to dietplans_path
  end
end
