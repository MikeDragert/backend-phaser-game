require "test_helper"

class PlayerItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get player_items_index_url
    assert_response :success
  end
end
