class Question < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :author_id

  has_many :comments, as: :commentable

  has_many :tags, through: :question_tags

end
