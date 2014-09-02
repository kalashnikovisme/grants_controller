require 'test_helper'

class Web::WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    create :help
    get :index
    assert_response :success, @response.body
  end
end
