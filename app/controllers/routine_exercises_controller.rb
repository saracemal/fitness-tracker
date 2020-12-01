class RoutineExercisesController < ApplicationController 
    def index
        @routine_exercises = RoutineExercise.all
    end
end