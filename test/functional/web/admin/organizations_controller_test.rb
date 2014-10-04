require 'test_helper'

class Web::Admin::OrganizationsControllerTest < ActionController::TestCase
  setup do
    @organization = create :organization
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

  test "should create organization" do
    attributes = attributes_for :organization

    post :create, organization: attributes
    assert_response :redirect

    organization = Organization.last
    assert_equal attributes[:title], organization.title
  end

  test "should not create organization" do
    attributes = { title: @organization.title }

    post :create, organization: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @organization
    assert_response :success
  end

  test "should update organization by admin" do
    attributes = attributes_for :organization
    put :update, id: @organization, organization: attributes
    assert_response :redirect

    @organization.reload
    assert_equal attributes[:title], @organization.title
  end

  test "should not update organization with render edit" do
    attributes = attributes_for :organization
    attributes[:title] = nil
    put :update, id: @organization, organization: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete :destroy, id: @organization
    end

    assert_redirected_to admin_organizations_path
  end
end
