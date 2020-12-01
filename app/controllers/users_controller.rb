class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        cookies[:user_id] = user.id
        redirect_to user_path(user)

        # if user.valid?
        #   cookies[:user_id] = user.id
        #    redirect_to user_path(user)
        # else
        #     flash[:user_errors] = user.errors.full_messages
        #     redirect_to new_user_path
        # end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

        redirect_to user_path(@user)

    end

    def destroy
        @user = User.destroy
    end

    def user_routines
        @user = User.find(params[:id])
        
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :weight, :height, :password, :user_name)
    end

end