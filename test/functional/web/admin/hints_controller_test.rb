require 'test_helper'

class Web::Admin::HintsControllerTest < ActionController::TestCase
  setup do
    @hint = create :hint
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

  test "should create hint" do
    attributes = attributes_for :hint

    post :create, hint: attributes
    assert_response :redirect

    hint = Hint.last
    assert_equal attributes[:subject], hint.subject
  end

  test "should not create hint" do
    attributes = { subject: @hint.subject }

    post :create, hint: attributes
    assert_response :success
  end

  test "should get edit by admin" do
    get :edit, id: @hint
    assert_response :success
  end

  test "should update hint by admin" do
    attributes = attributes_for :hint
    put :update, id: @hint, hint: attributes
    assert_response :redirect

    @hint.reload
    assert_equal attributes[:subject], @hint.subject
  end

  test "should not update hint with render edit" do
    attributes = attributes_for :hint
    attributes[:subject] = nil
    put :update, id: @hint, hint: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy hint" do
    assert_difference('Hint.count', -1) do
      delete :destroy, id: @hint
    end

    assert_redirected_to admin_hints_path
  end
end
