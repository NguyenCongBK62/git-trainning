class ApplicationController < ActionController::Base

<<<<<<< HEAD
	#xcdsfsf
    protect_from_forgery with: :exception
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:danger] = "You must be in to perform that action"
            redirect_to root_path
        end
    end

    #moi branch3


=======
>>>>>>> be8b65a... newbranch2
	#xcdsfsf
    protect_from_forgery with: :exception
    helper_method :current_user, :logged_in?

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in?
            flash[:danger] = "You must be in to perform that action"
            redirect_to root_path
        end
    end

    #moi branch3


end
