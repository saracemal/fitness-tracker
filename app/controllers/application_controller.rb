class ApplicationController < ActionController::Base

	before_action :find_current_user

	def find_current_user
		@current_user = User.find_by(id: cookies[:user_id])
	end

    ## Below is code that we may use whenever we create usernames
    ## and passwords and don't want to give inauthenticated users
    ## access to pages they don't need to be in

    # before_filter :set_user

	# protected
	#  def set_user
	#  @user = User.find(session[:id]) if @user.nil? && session[:id]
	#  end

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
