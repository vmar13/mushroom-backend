class Comment < ApplicationRecord
    belongs_to :mushroom
    belongs_to :user
    # validates :content, presence: { message: 'Please enter a comment.' }
    validates :content, presence: true
end
