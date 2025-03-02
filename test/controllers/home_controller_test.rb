require "test_helper"

# test/controllers/home_controller_test.rb
class HomeControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one) # Load the user fixture
    @post = Post.create!(title: "Test Post", content: "This is a test post", user_id: @user.id)
  end

  test "should get index" do
    get home_index_url
    assert_response :success
  end
end
