class User < ActiveRecord::Base
  has_many :user_expert_categories
  has_many :expert_categories, through: :user_expert_categories
  has_many :question_friends
  has_many :questions
  has_many :responses, through: :question_friends, source: :question
  has_secure_password
end
