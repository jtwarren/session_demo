class ApplicationController < ActionController::Base
  protect_from_forgery

  # before_filter :add_value_to_session

  # private
  # def add_value_to_session
  #   session[:message] = "Hello World!"
  # end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  helper_method :current_user
end