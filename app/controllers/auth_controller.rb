class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        @user= User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            jwt = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), jwt: jwt} status: :accepted
        end
    end

    def current_profile
        render json: {user: UserSerializer.new(current_user)} 
    end
end