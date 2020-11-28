require 'test_helper'

class EvaluationScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation_score = evaluation_scores(:one)
  end

  test "should get index" do
    get evaluation_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_score_url
    assert_response :success
  end

  test "should create evaluation_score" do
    assert_difference('EvaluationScore.count') do
      post evaluation_scores_url, params: { evaluation_score: { comment: @evaluation_score.comment, evaluation_id: @evaluation_score.evaluation_id, score: @evaluation_score.score, user_id: @evaluation_score.user_id } }
    end

    assert_redirected_to evaluation_score_url(EvaluationScore.last)
  end

  test "should show evaluation_score" do
    get evaluation_score_url(@evaluation_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_score_url(@evaluation_score)
    assert_response :success
  end

  test "should update evaluation_score" do
    patch evaluation_score_url(@evaluation_score), params: { evaluation_score: { comment: @evaluation_score.comment, evaluation_id: @evaluation_score.evaluation_id, score: @evaluation_score.score, user_id: @evaluation_score.user_id } }
    assert_redirected_to evaluation_score_url(@evaluation_score)
  end

  test "should destroy evaluation_score" do
    assert_difference('EvaluationScore.count', -1) do
      delete evaluation_score_url(@evaluation_score)
    end

    assert_redirected_to evaluation_scores_url
  end
end
