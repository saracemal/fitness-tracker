class RoutinesController < ApplicationController

    def index
        @routines = Routine.all
        @entries = Entry.all
        @unique_routines = @entries.select{|entry| entry.user_id == cookies[:user_id].to_i}.map{|entry| entry.routine}.uniq 
    end

    def show
        @routine = Routine.find(params[:id])
        @routine_exercise = RoutineExercise.new
        @entry = Entry.new
    end

    def new
        @routine = Routine.new
        @entry = Entry.new
    end
    
    def create
        routine = Routine.create(routine_params)
        if routine.valid?
             redirect_to routine_path(routine)
          else
              flash[:routine_errors] = routine.errors.full_messages
              redirect_to new_routine_path
          end


        redirect_to routine_path(routine)
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
        params.require(:routine).permit(:name)
    end
end