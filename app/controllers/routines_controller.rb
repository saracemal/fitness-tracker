class RoutinesController < ApplicationController

    def index
        @routines = Routine.all
    end

    def new
    end
    
    def create
        routine = Routine.create(routine_params)

    end

    private
    def routine_params
        params.require(:routine).permit(:name, :user_id, :routine_exercise_id)
    end

end