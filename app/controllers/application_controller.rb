class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


    protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin, :contact_name, :contact_address, :contact_postal_code, :phone])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :admin, :contact_name, :contact_address, :contact_postal_code, :phone])
    end
end
