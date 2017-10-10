Rails.application.routes.draw do

  get 'projects/index'

  get 'projects/show'

  get 'projects/new'

  get 'projects/create'

  get 'projects/edit'

  get 'projects/update'

  get 'projects/destroy'

	resources :projects

	root "projects#index"

	devise_for :users

end
