class MushHealthBenefit < ApplicationRecord
    belongs_to :mushroom
    belongs_to :health_benefit 
    has_many :sources
end
