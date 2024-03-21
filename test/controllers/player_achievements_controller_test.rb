require "test_helper"

class PlayerAchievementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get player_achievements_index_url
    assert_response :success
  end
end
