class User < ApplicationRecord
    has_many :likes
    has_many :mushrooms, through: :likes
end
