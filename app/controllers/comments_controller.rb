class CommentsController < ApplicationController
  respond_to :js
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.author = current_user
    @comment.subject = self.class.extract_subject_from_param(params)
    
    @comment.save
    
    respond_with @comment
  end
  
  def self.extract_subject_from_param(params)
    param = params.keys.detect { |key| key.to_s.match(/_id$/) } # ticket_id
    subject_class = param.to_s[/^(\w+)_id$/, 1].classify.constantize # Ticket
    subject_id = params[param] # params[:ticket_id]
    subject_class.find(subject_id) # Ticket.find(subject_id)
  end
end