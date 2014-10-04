require 'test_helper'

class Web::PagesControllerTest < ActionController::TestCase
  setup do
    @page = create :page
  end

  test "should get index" do
    get :index, section: :about
    assert_response :success, @response.body
  end
end
