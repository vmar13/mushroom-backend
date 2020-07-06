class Api::V1::FavVideosController < ApplicationController
    
    def index
        fav_videos = FavVideo.all 
        render json: fav_videos, include: [:user]
    end

    def show
        fav_video = FavVideo.find(params[:id])   
        render json: fav_video, include: [:user] 
    end

    def new
        fav_video = FavVideo.new
        render json: fav_video
    end 

    def create
        fav_video = FavVideo.create(fav_video_params)
        render json: fav_video
    end 

    def destroy
        fav_video = FavVideo.find(params[:id])   
        fav_video.destroy 
    end 

    private

    def fav_video_params
        params.require(:fav_video).permit(:user_id, :url, :title)
    end 
end