class User < ActiveRecord::Base
    has_many :ideas
    # has_many :likedIdeas, through => likes

    validates :name, :password, :email, presence: true
    validates :password, length: { minimum: 8}
end
