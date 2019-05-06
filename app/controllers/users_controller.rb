class UsersController < ApplicationController

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

        render json: @user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: @user, status: :created
        else
            render json: {error: 'Failed to create user.'}, status: :not_acceptable
        end
    end


private
    def user_params
        params.require(:user).permit(:username, :mood, :fav_genre)
    end
end