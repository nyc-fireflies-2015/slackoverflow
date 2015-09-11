class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :commenter, class_name: :User, foreign_key: :commenter_id
  belongs_to :question
  has_many :threaded_comments, class_name: :Comment, foreign_key: :parent_comment_id
  belongs_to :parent_comment, class_name: :Comment
end
