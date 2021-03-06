Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get 'pages/home'
  root 'pages#home'

  get '/terms', to: 'pages#terms'

  resources :partners
  resources :leads

end
