require 'test_helper'

class Web::Admin::ContestsControllerTest < ActionController::TestCase
  setup do
    @contest = create :contest
    @admin = create :admin
    sign_in @admin
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest" do
    attributes = attributes_for :contest

    post :create, contest: attributes
    assert_response :redirect

    contest = Contest.last
    assert_equal attributes[:title], contest.title
  end

  test "should not create contest" do
    attributes = { title: @contest.title }

    post :create, contest: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @contest
    assert_response :success
  end

  test "should update contest by admin" do
    attributes = attributes_for :contest
    put :update, id: @contest, contest: attributes
    assert_response :redirect

    @contest.reload
    assert_equal attributes[:title], @contest.title
  end

  test "should not update contest with render edit" do
    attributes = attributes_for :contest
    attributes[:title] = nil
    put :update, id: @contest, contest: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy contest" do
    assert_difference('Contest.count', -1) do
      delete :destroy, id: @contest
    end

    assert_redirected_to admin_contests_path
  end
end
