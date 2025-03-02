require "test_helper"

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    sign_in users(:one) # Ensure user is signed in
    get posts_url
    assert_response :success
  end
end
