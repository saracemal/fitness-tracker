class UserRoutinesController < ApplicationController
    
    def new

    end

    def create
        @user_routine = UserRoutine.create(user_routine_params)
        redirect_to routine_path(@user_routine.routine_id)
    end

    private

    def user_routine_params
        params.require(:user_routine).permit(:user_id, :routine_id)
    end

end