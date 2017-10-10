class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception


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
