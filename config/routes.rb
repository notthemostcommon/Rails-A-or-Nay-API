Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post   'login'   => 'sessions#create'
    delete 'logout'  => 'sessions#destroy'
    get    'verify'  => 'sessions#verify_access_token'
    resources :users, param: :access_token
    resources :password_resets, only: [:new, :create, :edit, :update]
  end
  
  resources :favorites, only: [:index, :create, :update, :destroy]
  resources :reviews, only: [:index, :create, :update, :destroy]
  resources :faqs, only: [:index]
end
