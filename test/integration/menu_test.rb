require 'test_helper'
 
class MenuTest < ActionDispatch::IntegrationTest
  test "There is a home link on the page" do
    get "/"
    assert_select "a", { text: "Home" }
  end
 
  test "There is a shopping cart link on the page" do
    get "/"
    assert_select "a", { text: "Shopping Cart" }
  end
end