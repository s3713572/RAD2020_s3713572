require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end
  # <!--learn web development with rails page 314-->
  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { email: @user.email, name: @user.name } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { email: @user.email, name: @user.name, password:"foobar",password_confirmation:"foobar"} }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end

  test "email should be present" do
    @user.email=""
    assert_not @user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email="Foo@ExAMPle.CoM"
    @user.email=mixed_case_email
    @user.saveassert_equal mixed_case_email.downcase, @user.reload.email
  end
end
