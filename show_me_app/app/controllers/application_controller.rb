class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	#Sets up the parameters for divise user if it is the devise controller
	before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    	# Overides devise user controller to force in role, name and year parameters
        def configure_permitted_parameters
        	
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :role, :year, :password])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :role, :year, :password, :current_password])
        end
end
