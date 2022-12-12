class ApplicationController < ActionController::Base
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username)}
  end
end
