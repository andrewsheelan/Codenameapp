class ExpertCategory < ActiveRecord::Base
  has_many :user_expert_categories
end
