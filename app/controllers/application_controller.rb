class ApplicationController < ActionController::Base
include Pagy::Backend

after_action :verify_authorized, unless: -> { devise_controller? || self.class == WelcomeController }

include Pundit::Authorization

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end
end
