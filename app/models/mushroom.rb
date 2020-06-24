class Mushroom < ApplicationRecord
    has_many :comments
    has_many :likes
    has_many :users, through: :likes
    has_many :mush_health_benefits
    has_many :health_benefits, through: :mush_health_benefits 
    has_one_attached :image
end
