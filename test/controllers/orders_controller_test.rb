require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { company: @order.company, email: @order.email, name: @order.name, number: @order.number, text: @order.text } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

    assert_redirected_to orders_url
  end
end
