class Question < ActiveRecord::Base
  belongs_to :author, class_name: :User, foreign_key: :author_id

  has_many :comments, as: :commentable
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :votes, as: :voteable

  validates :title, :body, :author_id, presence: true
  
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def answers
    self.comments.map{ |comment| comment.is_answer == true }
  end

end
