class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Monban::ControllerHelpers
  protect_from_forgery with: :exception

  #def current_user
  #	if cookies[:user_id]
  #		@user ||= User.find_by(id: cookies.signed[:user_id])
  #	end
  #nd
  #helper_method :current_user

  #def signed_in?
  #	current_user
  #end
  #helper_method :signed_in?
end
