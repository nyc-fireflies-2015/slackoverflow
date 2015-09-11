class User < ActiveRecord::Base
  has_secure_password

  has_many :questions, foreign_key: :author_id
  has_many :comments, foreign_key: :commenter_id

  validates :username, uniqueness: true, presence: true, length: { in: 3..12 }
  validates :password_digest, presence: true
end
