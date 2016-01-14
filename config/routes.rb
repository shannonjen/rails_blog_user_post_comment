Rails.application.routes.draw do

  root 'home#home'

  get 'sign-up' => 'users#new'
  get '/log-in' => 'sessions#new'
  post '/log-in' => 'sessions#create'
  get '/log-out' => 'sessions#destroy'

  resources :users 

  resources :posts do
    resources :comments
  end

end
