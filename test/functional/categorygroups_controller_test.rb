require 'test_helper'

class CategorygroupsControllerTest < ActionController::TestCase
  setup do
    @categorygroup = categorygroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorygroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorygroup" do
    assert_difference('Categorygroup.count') do
      post :create, categorygroup: @categorygroup.attributes
    end

    assert_redirected_to categorygroup_path(assigns(:categorygroup))
  end

  test "should show categorygroup" do
    get :show, id: @categorygroup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorygroup.to_param
    assert_response :success
  end

  test "should update categorygroup" do
    put :update, id: @categorygroup.to_param, categorygroup: @categorygroup.attributes
    assert_redirected_to categorygroup_path(assigns(:categorygroup))
  end

  test "should destroy categorygroup" do
    assert_difference('Categorygroup.count', -1) do
      delete :destroy, id: @categorygroup.to_param
    end

    assert_redirected_to categorygroups_path
  end
end
