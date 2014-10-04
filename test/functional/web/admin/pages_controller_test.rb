require 'test_helper'

class Web::Admin::PagesControllerTest < ActionController::TestCase
  setup do
    @page = create :page
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

  test "should create page" do
    attributes = attributes_for :page

    post :create, page: attributes
    assert_response :redirect

    page = Page.last
    assert_equal attributes[:title], page.title
  end

  test "should not create page" do
    attributes = { title: @page.title }

    post :create, page: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @page
    assert_response :success
  end

  test "should update page by admin" do
    attributes = attributes_for :page
    put :update, id: @page, page: attributes
    assert_response :redirect

    @page.reload
    assert_equal attributes[:title], @page.title
  end

  test "should not update page with render edit" do
    attributes = attributes_for :page
    attributes[:title] = nil
    put :update, id: @page, page: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete :destroy, id: @page
    end

    assert_redirected_to admin_pages_path
  end
end
