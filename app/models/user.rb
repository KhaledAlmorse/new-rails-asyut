class User < ApplicationRecord
  has_many :posts, foreign_key: :user_id
  has_many :created_posts, class_name: "Post", foreign_key: :user_id
end
