Rails.application.routes.draw do

	devise_for :users
	resources :projects

	root "static#home"

end
