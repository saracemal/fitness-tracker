class RoutinesController < ApplicationController

    def index
        @routines = Routine.all
    end

    def show
        @routine = Routine.find(params[:id])
        @routine_exercise = RoutineExercise.new
    end

    def new
        @routine = Routine.new
        
    end
    
    def create
        routine = Routine.create(routine_params)
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

    private
    def routine_params
        params.require(:routine).permit(:name, :user_id)
    end
end