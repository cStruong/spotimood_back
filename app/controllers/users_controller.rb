class UsersController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: accepted
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

        render json: @user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json:@user, status: :created
        else
            render json: {error: 'Failed to create user.'}, status: :not_acceptable
        end
    end


private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :mood, :fav_genre, :profile_pic_url)
    end
end