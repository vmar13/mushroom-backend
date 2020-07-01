class Api::V1::CommentsController < ApplicationController
    
            def index
                comments = Comment.all 
                render json: comments, include: [:mushroom, :user]
            end
    
            def show
                comment = Comment.find(params[:id])   
                render json: comment, include: [:mushroom, :user] 
            end
    
            def new
                comment = Comment.new
                render json: comment
            end 
    
            def create
                comment = Comment.create(comment_params)
                render json: comment
            end 
    
            def destroy
                comment = Comment.find(params[:id])   
                comment.destroy 
            end 
    
            private
    
            def comment_params
                params.require(:comment).permit(:user_id, :mushroom_id, :content)
            end 
    end