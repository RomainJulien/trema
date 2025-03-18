require "test_helper"

class CareersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get careers_show_url
    assert_response :success
  end

  test "should get create" do
    get careers_create_url
    assert_response :success
  end
end
