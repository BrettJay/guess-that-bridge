require "test_helper"

class Admin::Games::QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get admin_games_questions_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_games_question_url
    assert_response :success
  end

  test "should create question" do
    assert_difference("Question.count") do
      post admin_games_questions_url, params: { question: { title: @question.title } }
    end

    assert_redirected_to admin_games_question_url(Question.last)
  end

  test "should show question" do
    get admin_games_question_url(@question)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_games_question_url(@question)
    assert_response :success
  end

  test "should update question" do
    patch admin_games_question_url(@question), params: { question: { title: @question.title } }
    assert_redirected_to admin_games_question_url(@question)
  end

  test "should destroy question" do
    assert_difference("Question.count", -1) do
      delete admin_games_question_url(@question)
    end

    assert_redirected_to admin_games_questions_url
  end
end
