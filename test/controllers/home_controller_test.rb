require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers # Include Devise test helpers

  test "should get index" do
    user = users(:one) # Assuming you have a user fixture
    sign_in user # Sign in the user
    get home_index_url
    assert_response :success
  end
end
