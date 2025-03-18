require "test_helper"

class PsyProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get psy_profiles_show_url
    assert_response :success
  end
end
