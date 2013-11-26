class UserExpertCategory < ActiveRecord::Base
  belongs_to :user
  belongs_to :expert_category
  belongs_to :rating
end
