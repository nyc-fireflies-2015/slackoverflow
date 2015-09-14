class Vote < ActiveRecord::Base
  belongs_to :voteable, polymorphic: true
  belongs_to :voter, class_name: :User, foreign_key: :voter_id

  validates :voter_id, :voteable_id, presence: true
end
