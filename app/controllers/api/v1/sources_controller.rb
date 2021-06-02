class Api::V1::SourcesController < ApplicationController
    skip_before_action :authorized
    
    def index
        sources = Source.all 
        render json: sources
    end

    def show
        source = Source.find(params[:id])   
        render json: source 
    end

    def new
        source = Source.new
        render json: source
    end 

    def create
        source = Source.create(source_params)
        render json: source
    end 

    private

    def source_params
        params.require(:source).permit(:mush_health_benefit_id, :citation)
    end 
end