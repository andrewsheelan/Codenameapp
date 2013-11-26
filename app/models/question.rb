class Question < ActiveRecord::Base
  belongs_to :shopper, class_name: "User", foreign_key: :shopper_id
  has_many :question_images
  has_many :question_friends
end
