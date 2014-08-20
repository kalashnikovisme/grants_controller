require 'test_helper'

class Web::Admin::GrantOperatorsControllerTest < ActionController::TestCase
  setup do
    @grant_operator = create :grant_operator
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

  test "should create grant_operator" do
    attributes = attributes_for :grant_operator

    post :create, grant_operator: attributes
    assert_response :redirect

    grant_operator = GrantOperator.last
    assert_equal attributes[:title], grant_operator.title
  end

  test "should not create grant_operator" do
    attributes = { title: @grant_operator.title }

    post :create, grant_operator: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @grant_operator
    assert_response :success
  end

  test "should update grant_operator by admin" do
    attributes = attributes_for :grant_operator
    put :update, id: @grant_operator, grant_operator: attributes
    assert_response :redirect

    @grant_operator.reload
    assert_equal attributes[:title], @grant_operator.title
  end

  test "should not update grant_operator with render edit" do
    attributes = attributes_for :grant_operator
    attributes[:title] = nil
    put :update, id: @grant_operator, grant_operator: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy grant_operator" do
    assert_difference('GrantOperator.count', -1) do
      delete :destroy, id: @grant_operator
    end

    assert_redirected_to admin_grant_operators_path
  end
end
