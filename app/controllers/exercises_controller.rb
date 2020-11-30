class ExercisesController < ApplicationController

    def index
        @exercises = Exercise.all
    end

    def show
        @exercise = Exercise.find(params[:id])
    end

    def new
    end

    def create
        
    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :reps, :difficulty)
    end
end