class SessionsController < ApplicationController
    def logout
        cookies.delete(:user_id)
        redirect_to new_user_path
    end

    def new
    end

    def login
        user = User.find_by(user_name: params[:session][:user_name])

        if user && user.authenticate(params[:session][:password])
            sessions[:user_id] = user.id
            redirect_to users_path
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_login_path
        end
    end

    
end