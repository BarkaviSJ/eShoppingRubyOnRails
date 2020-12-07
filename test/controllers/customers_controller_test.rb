require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = Customer.first #new
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "can visit login page" do #new
    get new_customer_session_path
    assert_response :success
  end

  test "should redirect to login on checkout" do #need login details for entering shippimng detail
    get new_shipping_detail_path
    assert_response :redirect
  end
  
end