Bookcheck::Application.routes.draw do
  	#get 'sessions/new'

  	#get 'user/new'
  	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	root :to => "users#new"

	resources :users
	resources :sessions

	resources :books do
		resources :comments, :only => :create
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
