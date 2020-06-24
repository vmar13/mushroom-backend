class Api::V1::MushroomsController < ApplicationController
    
            def index
                mushrooms = Mushroom.all 
                render json: mushrooms
            end
    
            def show
                mushroom = Mushroom.find(params[:id])   
                render json: mushroom 
            end
      
    end