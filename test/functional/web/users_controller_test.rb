require 'test_helper'

class Web::UsersControllerTest < ActionController::TestCase
  setup do
    @user = create :user
  end
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    attributes = attributes_for :user

    post :create, user: attributes
    assert_response :redirect

    user = User.last
    assert_equal attributes[:email], user.email
  end

  test "should not create user" do
    attributes = { email: @user.email }

    post :create, user: attributes
    assert_response :success
  end
end
