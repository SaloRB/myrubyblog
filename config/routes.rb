Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  get 'categories/index'
  get 'categories/edit'
  get 'categories/new'
  get 'categories/show'
	
  root 'welcome#index'

	resources :posts
	resources :categories
  
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'resources' => 'pages#resources'

  ActiveAdmin.routes(self)
end
