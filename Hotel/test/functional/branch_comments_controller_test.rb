require 'test_helper'

class BranchCommentsControllerTest < ActionController::TestCase
  setup do
    @branch_comment = branch_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:branch_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branch_comment" do
    assert_difference('BranchComment.count') do
      post :create, branch_comment: @branch_comment.attributes
    end

    assert_redirected_to branch_comment_path(assigns(:branch_comment))
  end

  test "should show branch_comment" do
    get :show, id: @branch_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branch_comment
    assert_response :success
  end

  test "should update branch_comment" do
    put :update, id: @branch_comment, branch_comment: @branch_comment.attributes
    assert_redirected_to branch_comment_path(assigns(:branch_comment))
  end

  test "should destroy branch_comment" do
    assert_difference('BranchComment.count', -1) do
      delete :destroy, id: @branch_comment
    end

    assert_redirected_to branch_comments_path
  end
end
