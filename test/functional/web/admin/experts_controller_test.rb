require 'test_helper'

class Web::Admin::ExpertsControllerTest < ActionController::TestCase
  setup do
    @expert = create :expert
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

  test "should create expert" do
    attributes = attributes_for :expert

    post :create, expert: attributes
    assert_response :redirect

    expert = Expert.last
    assert_equal attributes[:first_name], expert.first_name
  end

  test "should not create expert" do
    attributes = { first_name: @expert.first_name }

    post :create, expert: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @expert
    assert_response :success
  end

  test "should update expert by admin" do
    attributes = attributes_for :expert
    put :update, id: @expert, expert: attributes
    assert_response :redirect

    @expert.reload
    assert_equal attributes[:first_name], @expert.first_name
  end

  test "should not update expert with render edit" do
    attributes = attributes_for :expert
    attributes[:first_name] = nil
    put :update, id: @expert, expert: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy expert" do
    assert_difference('Expert.count', -1) do
      delete :destroy, id: @expert
    end

    assert_redirected_to admin_experts_path
  end
end
