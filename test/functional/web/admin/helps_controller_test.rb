require 'test_helper'

class Web::Admin::HelpsControllerTest < ActionController::TestCase
  setup do
    @help = create :help
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

  test "should create help" do
    attributes = attributes_for :help

    post :create, help: attributes
    assert_response :redirect

    help = Help.last
    assert_equal attributes[:title], help.title
  end

  test "should not create help" do
    attributes = { title: @help.title }

    post :create, help: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @help
    assert_response :success
  end

  test "should update help by admin" do
    attributes = attributes_for :help
    put :update, id: @help, help: attributes
    assert_response :redirect

    @help.reload
    assert_equal attributes[:title], @help.title
  end

  test "should not update help with render edit" do
    attributes = attributes_for :help
    attributes[:title] = nil
    put :update, id: @help, help: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy help" do
    assert_difference('Help.count', -1) do
      delete :destroy, id: @help
    end

    assert_redirected_to admin_helps_path
  end
end
