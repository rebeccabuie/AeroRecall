require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get check_answer" do
    get questions_check_answer_url
    assert_response :success
  end
end
