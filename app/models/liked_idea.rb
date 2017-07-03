class LikedIdea < ActiveRecord::Base
  belongs_to :user
  belongs_to :ideas
end
