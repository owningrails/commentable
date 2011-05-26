require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create a comment on a ticket" do
    ticket = Ticket.first
    
    post :create, :ticket_id => ticket, :comment => { :body => "hi" }, :format => "js"
    
    assert_response :success, @response.body
    assert_equal ticket, assigns(:comment).subject
  end
  
  test "create a comment on a user" do
    user = User.first
    
    post :create, :user_id => user, :comment => { :body => "hi" }, :format => "js"
    
    assert_response :success, @response.body
    assert_equal user, assigns(:comment).subject
  end
  
  test "extract_subject_from_param" do
    assert_equal Ticket.first, CommentsController.extract_subject_from_param(:ticket_id => Ticket.first.id)
    assert_equal User.first, CommentsController.extract_subject_from_param(:user_id => User.first.id)
  end
end