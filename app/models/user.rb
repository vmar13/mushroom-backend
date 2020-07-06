class User < ApplicationRecord
    has_many :comments
    has_many :mushrooms, through: :comments 
    has_many :fav_videos
end
