class Api::V1::HealthBenefitsController < ApplicationController
    
    def index
        health_benefits = HealthBenefit.all 
        render json: health_benefits
    end

    def show
        health_benefit = HealthBenefit.find(params[:id])   
        render json: health_benefit 
    end

    
end