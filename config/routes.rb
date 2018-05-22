Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  get 'categories/index'

  get 'categories/edit'

  get 'categories/new'

  get 'categories/show'

	root 'welcome#index'

	resources :posts
	resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  ActiveAdmin.routes(self)
end
