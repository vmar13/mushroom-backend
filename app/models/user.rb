class User < ApplicationRecord
    has_many :comments
    has_many :mushrooms, through: :comments 
    has_many :favorites
    has_secure_password
    validates :username, uniqueness: {case_sensitive: true}
end
