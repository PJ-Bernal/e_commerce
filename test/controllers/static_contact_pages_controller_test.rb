require "test_helper"

class StaticContactPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get static_contact_pages_show_url
    assert_response :success
  end
end
