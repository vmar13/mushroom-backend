class HealthBenefit < ApplicationRecord
    has_many :mush_health_benefits
    has_many :mushrooms, through: :mush_health_benefits
end
