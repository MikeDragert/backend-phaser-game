require "test_helper"

class SaveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get save_index_url
    assert_response :success
  end
end
