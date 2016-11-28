require 'test_helper'

class ORganizationsControllerTest < ActionController::TestCase
  setup do
    @o_rganization = o_rganizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:o_rganizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create o_rganization" do
    assert_difference('ORganization.count') do
      post :create, o_rganization: {  }
    end

    assert_redirected_to o_rganization_path(assigns(:o_rganization))
  end

  test "should show o_rganization" do
    get :show, id: @o_rganization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @o_rganization
    assert_response :success
  end

  test "should update o_rganization" do
    patch :update, id: @o_rganization, o_rganization: {  }
    assert_redirected_to o_rganization_path(assigns(:o_rganization))
  end

  test "should destroy o_rganization" do
    assert_difference('ORganization.count', -1) do
      delete :destroy, id: @o_rganization
    end

    assert_redirected_to o_rganizations_path
  end
end
