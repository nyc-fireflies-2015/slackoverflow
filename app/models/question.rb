class Question < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :author_id

  has_many :comments, as: :commentable
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :votes, as: :voteable
end
