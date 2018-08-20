Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :answers
    resources :categories
    resources :questions

    root to: "users#index"
  end

  devise_for :users
	root to: 'static#home'
end