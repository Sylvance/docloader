require 'test_helper'

# helper method
def sign_up_as(user)
  post users_url, params: { user: { bio: user.bio, email: 'user@user.email', password: 'secret', password_confirmation: 'secret', username: user.username } }
end

# helper method
def sign_in_as(user)
  sign_up_as(user)
  post sessions_url, params: { email: user.email, password: 'secret' }
end

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
    @user = users(:one)
  end

  test "should get index" do
    sign_in_as(@user)
    get posts_url
    assert_response :success
  end

  test "should get new" do
    sign_in_as(@user)
    get new_post_url
    assert_response :success
  end

  # test "should create post" do
  #   sign_in_as(@user)
  #   assert_difference('Post.count') do
  #     post posts_url, params: { post: { description: @post.description, post: @post.post, title: @post.title } }
  #   end

  #   assert_redirected_to post_url(Post.last)
  # end

  test "should show post" do
    sign_in_as(@user)
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    sign_in_as(@user)
    get edit_post_url(@post)
    assert_response :success
  end

  # test "should update post" do
  #   sign_in_as(@user)
  #   patch post_url(@post), params: { post: { description: @post.description, post: @post.post, title: @post.title } }
  #   assert_redirected_to post_url(@post)
  # end

  test "should destroy post" do
    sign_in_as(@user)
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
