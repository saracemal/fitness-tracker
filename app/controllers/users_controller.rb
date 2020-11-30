class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new

    end

    def create
        user = User.create(user_params)
    end

    def edit
    end

    def update
    end

    def destroy
        @user = User.destroy
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :weight, :height)
    end

end