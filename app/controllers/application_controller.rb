class ApplicationController < ActionController::Base
#   before_action :authenticate_user!
#   before_action :configure_permitted_parameters, if: :devise_controller?
  
#   def configure_permitted_parameters
#     devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :avatar_url])
    
#     devise_parameter_sanitizer.permit(:account_update, :keys => [:avatar_url])
#   end
include Pagy::Backend

after_action :verify_authorized, unless: -> { devise_controller? || self.class == WelcomeController }
# after_action :verify_policy_scoped, only: :index, unless: :devise_controller?

include Pundit::Authorization

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

private

def user_not_authorized
  flash[:alert] = "You are not authorized to perform this action."
  redirect_back(fallback_location: root_path)
end
end
