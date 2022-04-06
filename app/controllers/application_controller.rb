class ApplicationController < ActionController::Base
  before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?
   
  include Pundit::Authorization

 rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
  
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :first_name, :last_name,
     :user_name, :Address, :city, :postal_code, :password_confirmation, :role)}
  end

  protected

def after_sign_in_path_for(resource)
if current_user.Buyer?
   root_path
else
  dashboard_path
 end 
  end
end


