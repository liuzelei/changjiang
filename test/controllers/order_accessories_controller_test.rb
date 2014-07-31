require 'test_helper'

class OrderAccessoriesControllerTest < ActionController::TestCase
  setup do
    @order_accessory = order_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_accessory" do
    assert_difference('OrderAccessory.count') do
      post :create, order_accessory: { accessory_id: @order_accessory.accessory_id, count: @order_accessory.count }
    end

    assert_redirected_to order_accessory_path(assigns(:order_accessory))
  end

  test "should show order_accessory" do
    get :show, id: @order_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_accessory
    assert_response :success
  end

  test "should update order_accessory" do
    patch :update, id: @order_accessory, order_accessory: { accessory_id: @order_accessory.accessory_id, count: @order_accessory.count }
    assert_redirected_to order_accessory_path(assigns(:order_accessory))
  end

  test "should destroy order_accessory" do
    assert_difference('OrderAccessory.count', -1) do
      delete :destroy, id: @order_accessory
    end

    assert_redirected_to order_accessories_path
  end
end
