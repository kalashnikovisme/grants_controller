require 'test_helper'

class Web::HelpsControllerTest < ActionController::TestCase
  setup do
    @help = create :help
  end

  test "should get show" do
    get :show, id: @help
    assert_response :success, @response.body
  end
end
