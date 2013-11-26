class QuestionFriend < ActiveRecord::Base
  belongs_to :user, :class_name => "User", :foreign_key => 'friend_id'
  belongs_to :question
end
