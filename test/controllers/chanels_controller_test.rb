require "test_helper"

class ChanelsControllerTest < ActionDispatch::IntegrationTest
  test "Access search" do
    get chanels_search_url
    assert_response :success
  end

  test "Access index" do
    get chanels_url
    assert_response :success
  end
end
