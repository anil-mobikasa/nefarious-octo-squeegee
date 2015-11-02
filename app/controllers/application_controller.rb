class ApplicationController < ActionController::Base
  
  #before_filter :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #load_and_authorize_resource
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end

  private
  #def current_user
  #  User.new(session[:id])
  #end
  helper_method :current_user

  protected
  def after_sign_in_path_for(resource)
    case resource.role.name
      when "admin"
        dashboard_admin_path(resource)
      when "super_admin"
        dashboard_super_admin_path(resource)
      when "dietitian"
        dashboard_dietitian_path(resource)
      when "patient"
        dashboard_patient_path(resource)
    end     
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
  end
end
