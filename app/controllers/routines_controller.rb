class RoutinesController < ApplicationController

    def index
        @routines = Routine.all
        @entries = Entry.all
        @user_routines = UserRoutine.all
        
        e = @entries.select{|entry| entry.user_id == cookies[:user_id].to_i}.map{|entry| entry.routine}.uniq 
        u = @user_routines.select{|ur| ur.user_id == cookies[:user_id].to_i}.map{|ur| ur.routine}.uniq 
        @unique_routines = [e, u].flatten.uniq

        #@unique_routines = @entries.select{|entry| entry.user_id == cookies[:user_id].to_i}.map{|entry| entry.routine}.uniq 
        
    end

    def show
        @routine = Routine.find(params[:id])
        @routine_exercise = RoutineExercise.new
        @entry = Entry.new
        #@entry_belong = Entry.find_by(routine_id: @routine.id)
        #@user_routine = UserRoutine.find_by(routine_id: @routine.id)
        #byebug

    end

    def new
        @routine = Routine.new
        @user_routine = UserRoutine.new
    end
    
    def create
        routine = Routine.create(routine_params)
        if routine.valid?
<<<<<<< HEAD
=======
            UserRoutine.create(user_id: cookies[:user_id], routine_id: routine.id)
>>>>>>> 53add954e396f613186da8d5ac71e1b7220adcda
            redirect_to routine_path(routine)
        else
            flash[:routine_errors] = routine.errors.full_messages
            redirect_to new_routine_path
        end
<<<<<<< HEAD
        
=======
>>>>>>> 53add954e396f613186da8d5ac71e1b7220adcda
    end

    def edit
        @routine = Routine.find(params[:id])
    end

    def update
        @routine = Routine.find(params[:id])
        @routine.update(routine_params)
        redirect_to routine_path(@routine)
    end 

    def routine_entries
        @routine = Routine.find(params[:id])
        
    end

    private
    def routine_params
        params.require(:routine).permit(:name, :user_id)
    end
end