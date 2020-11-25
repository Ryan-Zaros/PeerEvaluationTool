require "application_system_test_case"

class EvaluationScoresTest < ApplicationSystemTestCase
  setup do
    @evaluation_score = evaluation_scores(:one)
  end

  test "visiting the index" do
    visit evaluation_scores_url
    assert_selector "h1", text: "Evaluation Scores"
  end

  test "creating a Evaluation score" do
    visit evaluation_scores_url
    click_on "New Evaluation Score"

    fill_in "Comment", with: @evaluation_score.comment
    fill_in "Evaluationid", with: @evaluation_score.evaluationId
    fill_in "Recipientuserid", with: @evaluation_score.recipientUserId
    fill_in "Score", with: @evaluation_score.score
    click_on "Create Evaluation score"

    assert_text "Evaluation score was successfully created"
    click_on "Back"
  end

  test "updating a Evaluation score" do
    visit evaluation_scores_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @evaluation_score.comment
    fill_in "Evaluationid", with: @evaluation_score.evaluationId
    fill_in "Recipientuserid", with: @evaluation_score.recipientUserId
    fill_in "Score", with: @evaluation_score.score
    click_on "Update Evaluation score"

    assert_text "Evaluation score was successfully updated"
    click_on "Back"
  end

  test "destroying a Evaluation score" do
    visit evaluation_scores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evaluation score was successfully destroyed"
  end
end
