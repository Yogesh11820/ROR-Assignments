class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :require_login

    private
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to root_path  # halts request cycle
      end
    end


    def set_current_user
      # finds user with session data and stores it if present
      Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
    end
    def require_user_logged_in!
      # allows only logged in user
      redirect_to sign_in_path, alert: 'You must be signed in' if Current.user.nil?
    end
    def logged_in?
      !!current_user
    end
  
    # Define current_user method to retrieve the currently logged-in user
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end
  
    helper_method :logged_in?, :current_user
end
