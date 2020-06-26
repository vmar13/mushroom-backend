class Mushroom < ApplicationRecord
    has_many :comments
    has_many :likes
    has_many :users, through: :likes
    has_many :mush_health_benefits
    has_many :health_benefits, through: :mush_health_benefits 
    has_one_attached :image
    

    # def as_json(*)
    #     super.except("created_at", "updated_at").tap do |hash|
    #       hash["image"] = url_for(hash.image)
    #     end
    #   end
end
