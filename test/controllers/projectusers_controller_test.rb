require 'test_helper'

class ProjectusersControllerTest < ActionController::TestCase
  setup do
    @projectuser = projectusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projectusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projectuser" do
    assert_difference('Projectuser.count') do
      post :create, projectuser: { project_id: @projectuser.project_id, user_id: @projectuser.user_id }
    end

    assert_redirected_to projectuser_path(assigns(:projectuser))
  end

  test "should show projectuser" do
    get :show, id: @projectuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projectuser
    assert_response :success
  end

  test "should update projectuser" do
    patch :update, id: @projectuser, projectuser: { project_id: @projectuser.project_id, user_id: @projectuser.user_id }
    assert_redirected_to projectuser_path(assigns(:projectuser))
  end

  test "should destroy projectuser" do
    assert_difference('Projectuser.count', -1) do
      delete :destroy, id: @projectuser
    end

    assert_redirected_to projectusers_path
  end
end
