require 'test_helper'

class Web::GrantOperatorsControllerTest < ActionController::TestCase
  setup do
    @grant_operator = create :grant_operator
  end

  test "should get index" do
    get :index
    assert_response :success, @response.body
  end
end
