class Api::V1::FavoritesController < ApplicationController
    
    def index
        favorites = Favorite.all 
        render json: favorites
    end

    def show
        favorite = Favorite.find(params[:id])   
        render json: favorite 
    end

    def new
        favorite = Favorite.new
        render json: favorite
    end 

    def create
        favorite = Favorite.create(favorite_params)
        render json: favorite
    end 


    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :video_id)
    end 
end