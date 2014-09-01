require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  def setup
    @user = create :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
    attrs = { email: @user.email, password: @user.password }
    post :create, user: attrs
    assert_response :redirect
    assert_redirected_to admin_path

    assert signed_in?
  end

  test "should not post create" do
    attrs = { email: "kuku@mail.ru", password: "123" }

    post :create, user: attrs
    assert_response :success

    assert not(signed_in?)
  end

  test "should delete destroy" do
    sign_in @user
    assert signed_in?

    delete :destroy
    assert_response :redirect
  end
end
