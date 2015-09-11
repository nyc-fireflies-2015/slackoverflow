class User < ActiveRecord::Base
  has_secure_password

  has_many :questions, foreign_key: :author_id

  has_many :comments, foreign_key: :commenter_id
end
