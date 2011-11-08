require 'test_helper'

class TagGroupsControllerTest < ActionController::TestCase
  setup do
    @tag_group = tag_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_group" do
    assert_difference('TagGroup.count') do
      post :create, tag_group: @tag_group.attributes
    end

    assert_redirected_to tag_group_path(assigns(:tag_group))
  end

  test "should show tag_group" do
    get :show, id: @tag_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_group.to_param
    assert_response :success
  end

  test "should update tag_group" do
    put :update, id: @tag_group.to_param, tag_group: @tag_group.attributes
    assert_redirected_to tag_group_path(assigns(:tag_group))
  end

  test "should destroy tag_group" do
    assert_difference('TagGroup.count', -1) do
      delete :destroy, id: @tag_group.to_param
    end

    assert_redirected_to tag_groups_path
  end
end
