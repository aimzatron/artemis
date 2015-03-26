require 'test_helper'

class StatusCatgeoriesControllerTest < ActionController::TestCase
  setup do
    @status_catgeory = status_catgeories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_catgeories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_catgeory" do
    assert_difference('StatusCatgeory.count') do
      post :create, status_catgeory: { name: @status_catgeory.name }
    end

    assert_redirected_to status_catgeory_path(assigns(:status_catgeory))
  end

  test "should show status_catgeory" do
    get :show, id: @status_catgeory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_catgeory
    assert_response :success
  end

  test "should update status_catgeory" do
    patch :update, id: @status_catgeory, status_catgeory: { name: @status_catgeory.name }
    assert_redirected_to status_catgeory_path(assigns(:status_catgeory))
  end

  test "should destroy status_catgeory" do
    assert_difference('StatusCatgeory.count', -1) do
      delete :destroy, id: @status_catgeory
    end

    assert_redirected_to status_catgeories_path
  end
end
