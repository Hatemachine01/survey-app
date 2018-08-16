Rails.application.routes.draw do
  devise_for :users
	root to: 'static#home'
	get 'registro', to: 'static#registration'

end