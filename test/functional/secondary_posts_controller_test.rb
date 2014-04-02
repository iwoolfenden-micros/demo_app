require 'test_helper'

class SecondaryPostsControllerTest < ActionController::TestCase
  setup do
    @secondary_post = secondary_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secondary_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secondary_post" do
    assert_difference('SecondaryPost.count') do
      post :create, secondary_post: { content: @secondary_post.content, extrastuff: @secondary_post.extrastuff, userid: @secondary_post.userid }
    end

    assert_redirected_to secondary_post_path(assigns(:secondary_post))
  end

  test "should show secondary_post" do
    get :show, id: @secondary_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secondary_post
    assert_response :success
  end

  test "should update secondary_post" do
    put :update, id: @secondary_post, secondary_post: { content: @secondary_post.content, extrastuff: @secondary_post.extrastuff, userid: @secondary_post.userid }
    assert_redirected_to secondary_post_path(assigns(:secondary_post))
  end

  test "should destroy secondary_post" do
    assert_difference('SecondaryPost.count', -1) do
      delete :destroy, id: @secondary_post
    end

    assert_redirected_to secondary_posts_path
  end
end
