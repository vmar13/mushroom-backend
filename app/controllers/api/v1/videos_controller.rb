class Api::V1::VideosController < ApplicationController
    
    def index
        videos = Video.all 
        render json: videos 
    end

    def new
        video = Video.new
        render json: video
    end 

    def create
        video = Video.create(video_params)
        render json: video
    end 

    def destroy
        video = Video.find(params[:id])   
        video.destroy
    end 

   

    private

    def video_params
        params.require(:video).permit(:title, :url)
    end 

end
