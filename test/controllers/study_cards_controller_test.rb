require "test_helper"

class StudyCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get study_cards_show_url
    assert_response :success
  end
end
