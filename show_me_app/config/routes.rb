Rails.application.routes.draw do

  get 'tags/create'

  get 'tags/destroy'

	devise_for :users

	resources :projects do
		resources :tags
	end

	root "static#home"

end
