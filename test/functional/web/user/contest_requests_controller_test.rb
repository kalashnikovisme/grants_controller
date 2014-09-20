require 'test_helper'

class Web::User::ContestRequestsControllerTest < ActionController::TestCase
  setup do
    @contest_request = create :contest_request
    @user = create :user
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest_request" do
    attributes = attributes_for :contest_request

    post :create, contest_request: attributes
    assert_response :redirect

    contest_request = ContestRequest.last
    assert_equal attributes[:goal], contest_request.goal
  end

  test "should not create contest_request" do
    attributes = { goal: @contest_request.goal }

    post :create, contest_request: attributes
    assert_response :success
  end

  test "should get edit by user" do
    get :edit, id: @contest_request
    assert_response :success
  end

  test "should update contest_request by user" do
    attributes = attributes_for :contest_request
    put :update, id: @contest_request, contest_request: attributes
    assert_response :redirect

    @contest_request.reload
    assert_equal attributes[:goal], @contest_request.goal
  end

  test "should not update contest_request with render edit" do
    attributes = attributes_for :contest_request
    attributes[:goal] = nil
    put :update, id: @contest_request, contest_request: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy contest_request" do
    assert_difference('ContestRequest.count', -1) do
      delete :destroy, id: @contest_request
    end

    assert_redirected_to contest_requests_path
  end
  # test "the truth" do
  #   assert true
  # end
end
