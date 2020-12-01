class ExercisesController < ApplicationController

    def index
        @exercises = Exercise.all
    end

    def show
        @exercise = Exercise.find(params[:id])
    end

    def new
        @exercise = Exercise.new
    end

    def create
        exercise = Exercise.create(exercise_params)

        # if exercise.valid?
        #     redirect_to exercise_path(exercise)
        # else
        #     flash[:exercise_errors] = exercise.errors.full_messages
        #     redirect_to new_exercise_path
        # end
    end

    private

    def exercise_params
        params.require(:exercise).permit(:name, :difficulty)
    end
end