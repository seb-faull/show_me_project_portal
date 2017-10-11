class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception


	#NEW STUFF
	before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    	# Overrides user controller and allows the new parameters
        def configure_permitted_parameters
        	
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :role, :year, :password])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :role, :year, :password, :current_password])
        end
	# authenticated :user do
	# 	root to: "projects#index", as: :authenticated_root
	# end

	# authenticated :user do
	#   root to: "projects#index", as: :authenticated_root
	# end

	# unauthenticated do
	#   root to: "static#home"
	# end

end
