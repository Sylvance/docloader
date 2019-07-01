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

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in_as(@user)
    get users_url
    assert_response :success
  end

  test "should get new" do
    sign_in_as(@user)
    get new_user_url
    assert_response :success
  end

  # test "should create user" do
  #   sign_in_as(@user)
  #   assert_difference('User.count') do
  #     post users_url, params: { user: { bio: @user.bio, email: 'user@user.email', password: 'secret', password_confirmation: 'secret', username: @user.username } }
  #   end

  #   assert_redirected_to user_url(User.last)
  # end

  test "should show user" do
    sign_in_as(@user)
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    sign_in_as(@user)
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    sign_in_as(@user)
    patch user_url(@user), params: { user: { bio: @user.bio, email: @user.email, password: 'secret', password_confirmation: 'secret', username: @user.username } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    sign_in_as(@user)
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
