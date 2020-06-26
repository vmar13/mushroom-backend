class Api::V1::HealthBenefitsController < ApplicationController
    
    def index
        health_benefits = HealthBenefit.all 
        render json: health_benefits
        
        # .to_json(:include => 
        # {:mushrooms => {:only => [:name, :scientific_name, :image, :location, :flavor]}}, except: [:created_at, :updated_at])
  
    end

    def show
        health_benefit = HealthBenefit.find(params[:id]) 
        render json: health_benefit, include: [:mushrooms]
        # render json: health_benefit, include: [:mushrooms]
        # .map { |mushroom|
        # mushroom.as_json.merge({ image: url_for(mushroom.image) })
        # }   
    end

        
end