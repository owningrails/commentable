class Comment < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  belongs_to :subject, :polymorphic => true
  
  validates :body, :presence => true
end