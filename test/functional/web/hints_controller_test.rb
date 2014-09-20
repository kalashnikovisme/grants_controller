require 'test_helper'

class Web::HintsControllerTest < ActionController::TestCase
  setup do
    @hint = create :hint
  end

  test "should get show" do
    get :show, id: @hint
    assert_response :success, @response.body
  end
end
