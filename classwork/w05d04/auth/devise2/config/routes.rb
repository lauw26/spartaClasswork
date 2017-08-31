Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  root 'static#home'
  get '/user/:id' => 'users#show'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
