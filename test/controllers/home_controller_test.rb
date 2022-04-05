require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "Access root path" do
    get root_url
    assert_response :success
  end
end
