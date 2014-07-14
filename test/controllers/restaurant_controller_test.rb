require 'test_helper'

class RestaurantControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

   test "should get new" do
    get :new
    assert_response :success
  end

   test "should get show valid" do
    get :show_valid
    assert_response :success
  end

   test "should get show invalid" do
    get :show_invalid
    assert_response :success
  end

end
