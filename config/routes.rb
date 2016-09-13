Rails.application.routes.draw do
  
  root 'home#index'
  get 'need' => 'home#need'
  
  ###### CHATROOM ROUTE
  get 'sad'=> 'rooms#sad'
  get 'happy'=> 'rooms#happy'
  get 'angry'=> 'rooms#angry'
  get 'calm'=> 'rooms#calm'

  ###### AUTHENTICATION ROUTES

  #get 'sessions/new'
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get 'logout' => 'sessions#destroy'

  #profile routes
  resources :user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount ActionCable.server => '/cable'
end
