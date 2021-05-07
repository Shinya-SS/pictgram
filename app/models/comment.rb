class Comment < ApplicationRecord
  
  before_save :comment_by
  
  validates :comment,  presence: true
  
  belongs_to :user
  belongs_to :topic
  
  private
  def comment_by
    self.comment += " by " + self.user.name
  end
end
