class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]
    
    def index
        users = User.all 
        render json: users, include: [:mushrooms] 
    end

    def show
        user = User.find(params[:id])   
        render json: user.as_json.merge({
            mushrooms: (user.mushrooms),
            comments: (user.comments),
            favorites: (user.favorites)
        })
    end


    def new
        user = User.new
        render json: user
    end 

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end 

        # sign up a new user
    def create
        @user = User.create(user_params)
        if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token}, status: :created
        else 
        render json: { error: 'That username already exists. Try again.' }, status: :not_acceptable
        end
    end


    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end 
end