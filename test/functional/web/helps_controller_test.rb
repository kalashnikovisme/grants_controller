require 'test_helper'

class Web::HelpsControllerTest < ActionController::TestCase
  setup do
    @help = create :help
  end

  test "should get index" do
    get :index
    assert_response :success, @response.body
  end
end
