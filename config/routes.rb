Rails.application.routes.draw do
  
  namespace :admin do
    resources :users
    resources :answers
    resources :categories
    resources :questions
    root to: "users#index"
  end


  devise_for :users , skip: [:registrations]
	
	root to: 'static#home'
	get 'registro', to: 'static#registration'
end



