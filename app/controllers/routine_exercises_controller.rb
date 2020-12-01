class RoutineExercisesController < ApplicationController 
    def index
        @routine_exercises = RoutineExercise.all
    end

    def new
        @routine_exercise = RoutineExercise.new
        
    end

    def create
        @routine_exercise = RoutineExercise.create(routine_exercise_params)
        redirect_to routine_path(@routine_exercise.routine)
    end

    private

    def routine_exercise_params
        params.require(:routine_exercise).permit(:routine_id, :exercise_id, :reps)
    end
end