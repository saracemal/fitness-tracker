class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]

    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @entries = Entry.all
        @user_routines = UserRoutine.all
        
        e = @entries.select{|entry| entry.user_id == cookies[:user_id].to_i}.map{|entry| entry.routine}.uniq 
        u = @user_routines.select{|ur| ur.user_id == cookies[:user_id].to_i}.map{|ur| ur.routine}.uniq 
        @unique_routines = [e, u].flatten.uniq

    end

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)

        if user.valid?
          cookies[:user_id] = user.id
           redirect_to user_path(user)
        else
            flash[:user_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
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

    def routines
        @user = User.find(params[:id])
        @routines = Routine.all.select{|routine| routine.user_id == @user.id}
        @entries = Entry.all
        @user_routines = UserRoutine.all
        
        e = @entries.select{|entry| entry.user_id == @user.id}.map{|entry| entry.routine}.uniq 
        u = @user_routines.select{|ur| ur.user_id == @user.id}.map{|ur| ur.routine}.uniq 
        @unique_routines = [e, u].flatten.uniq
    end

    def routine_entries
        # Trying to find this user's id
        @routine = Routine.find(params[:id])
        
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :weight, :height, :password, :user_name)
    end

end