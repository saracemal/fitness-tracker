class UsersController < ApplicationController
    skip_before_action :authorized, only: [:new, :create]


    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        @entries = Entry.all
        @user_routines = UserRoutine.all
        
        # Routines for self
        e = @entries.select{|entry| entry.user_id == cookies[:user_id].to_i}.map{|entry| entry.routine}.uniq 
        u = @user_routines.select{|ur| ur.user_id == cookies[:user_id].to_i}.map{|ur| ur.routine}.uniq 
        @unique_routines = [e, u].flatten.uniq

        # Routines for other
        e = @entries.select{|entry| entry.user_id == @user.id}.map{|entry| entry.routine}.uniq 
        u = @user_routines.select{|ur| ur.user_id == @user.id}.map{|ur| ur.routine}.uniq 
        @unique_routines_for_other = [e, u].flatten.uniq

    end

    def new
        @user = User.new
        @img_url = [
            "https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX4617170.jpg",
            "https://i.pinimg.com/originals/4f/bb/48/4fbb4825cba6b7ce8abf86e9722c87cb.jpg",
            "https://i.pinimg.com/564x/71/56/14/715614be795e5d80f759c7d9e9d4b993.jpg",
            "https://i.pinimg.com/474x/a9/e9/64/a9e964af54fa741354cabd86e280d768.jpg",
            "https://i.pinimg.com/564x/36/9b/c0/369bc01e4c301bff41711a2241a4213f.jpg",
            "https://www.poynter.org/wp-content/uploads/2019/12/AP_19345327608569.jpg",
            "https://c8.alamy.com/comp/HHB2JH/funny-crazy-hairdresser-haircut-hair-man-humans-human-beings-people-HHB2JH.jpg",
            "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/idris-elba-says-coronavirus-had-a-22traumatic-22-impact-on-his-mental-health-1594723325.jpg"
        ]
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
        params.require(:user).permit(:name, :age, :weight, :height, :password, :user_name, :img_url)
    end


end