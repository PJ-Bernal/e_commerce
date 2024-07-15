require "test_helper"

class StaticAboutPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get static_about_pages_show_url
    assert_response :success
  end
end
