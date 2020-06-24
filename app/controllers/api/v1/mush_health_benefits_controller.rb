class Api::V1::MushHealthBenefitsController < ApplicationController
    
    def index
        mush_health_benefits = MushHealthBenefit.all 
        render json: mush_health_benefits
    end

    def show
        mush_health_benefit = MushHealthBenefit.find(params[:id])   
        render json: mush_health_benefit 
    end
end 