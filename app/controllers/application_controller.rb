class ApplicationController < ActionController::Base

	before_action :find_current_user
	before_action :authorized

	def find_current_user
		@current_user = User.find_by(id: cookies[:user_id])
	end

	def authorized
		redirect_to new_login_path unless @current_user
	end

	#as stretch funtionality, we can change the above to redirect_to login_path
	#in order for you to get taken to the login page instead of new user page, 
	#and then create a button at the bottom that says "new user/sign-up", whatever and
	#that can redirect to new_user_path.

  
	

	#  def login_required
	#  return true if @user
	#  access_denied
	#  return false
	#  end

	#  def access_denied
	#  session[:return_to] = request.request_uri
	#  flash[:error] = Oops. You need to login before you can view that page.
	#  redirect_to :controller => user, :action => login
	#  end
	# end
end
