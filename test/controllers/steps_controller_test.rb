require "test_helper"

class StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get completed" do
    get steps_completed_url
    assert_response :success
  end
end
