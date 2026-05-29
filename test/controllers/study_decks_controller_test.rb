require "test_helper"

class StudyDecksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get study_decks_index_url
    assert_response :success
  end

  test "should get show" do
    get study_decks_show_url
    assert_response :success
  end
end
