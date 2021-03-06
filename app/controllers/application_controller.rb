class ApplicationController < ActionController::Base
  include Pundit 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from Pundit::NotAuthorizedError do |exception|
  redirect_to root_url, alert: exception.message
  
  def after_sign_in_path_for(resource)
    wikis_path
  end


  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
 end
end 
