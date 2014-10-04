require 'test_helper'

class Web::OrganizationsControllerTest < ActionController::TestCase
  setup do
    @organization = create :organization
  end

  test "should get index" do
    get :index
    assert_response :success, @response.body
  end
end
