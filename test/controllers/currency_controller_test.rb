require 'test_helper'

class CurrencyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get currency_new_url
    assert_response :success
  end

end
