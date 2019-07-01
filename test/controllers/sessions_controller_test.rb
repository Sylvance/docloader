require 'test_helper'

# helper method
def sign_up_as(user)
  post users_url, params: { user: { bio: user.bio, email: 'user@user.email', password: 'secret', password_confirmation: 'secret', username: user.username } }
end

class SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should get create" do
    sign_up_as(@user)
    post sessions_url, params: { email: @user.email, password: 'secret' }
    assert_redirected_to root_path
  end

  test "should get destroy" do
    sign_up_as(@user)
    #login
    post sessions_url, params: { email: @user.email, password: 'secret' }
    #logout
    get logout_url
    assert_redirected_to root_path
  end

end
