require 'test_helper'

class Web::ContestsControllerTest < ActionController::TestCase
  setup do
    @contest = create :contest
  end

  test "should get index" do
    get :index
    assert_response :success, @response.body
  end

  test "should get show" do
    get :show, id: @contest
    assert_response :success, @response.body
  end
end
