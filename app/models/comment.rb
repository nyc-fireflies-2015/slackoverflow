class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :commenter, class_name: :User, foreign_key: :commenter_id
  has_many :comments, as: :commentable
  has_many :votes, as: :voteable

  def vote_total
    total = 0
    self.votes.each{|vote| total += vote.value}
    total
  end
end
