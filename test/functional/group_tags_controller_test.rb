require 'test_helper'

class GroupTagsControllerTest < ActionController::TestCase
  setup do
    @group_tag = group_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_tag" do
    assert_difference('GroupTag.count') do
      post :create, group_tag: @group_tag.attributes
    end

    assert_redirected_to group_tag_path(assigns(:group_tag))
  end

  test "should show group_tag" do
    get :show, id: @group_tag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_tag.to_param
    assert_response :success
  end

  test "should update group_tag" do
    put :update, id: @group_tag.to_param, group_tag: @group_tag.attributes
    assert_redirected_to group_tag_path(assigns(:group_tag))
  end

  test "should destroy group_tag" do
    assert_difference('GroupTag.count', -1) do
      delete :destroy, id: @group_tag.to_param
    end

    assert_redirected_to group_tags_path
  end
end
