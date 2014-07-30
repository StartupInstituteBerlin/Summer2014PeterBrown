require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  def setup

  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create, restaurant: {name: "Anna's Taqueria"}
    assert_response :redirect
  end

  test "should get show" do
    get :show, id: @restaurant.id
    assert_response :success
  end

  test "#show error with an invalid id" do
    assert_raises ActiveRecord::RecordNotFound do
      get :show, id: 'does-not-exist'
    end
  end

  test "should get update" do
    get :update, id: @restaurant.id, restaurant: {name: "Anna's Taqueria"}
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, id: @restaurant.id
    assert_response :success
  end

  test "should get destroy" do
    get :destroy, id: @restaurant.id
    assert_response :redirect
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
