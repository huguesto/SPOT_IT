Rails.application.routes.draw do
  devise_for :users
  root to: 'places#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places, only: [:index, :show] do
    resources :spots, only: [:index, :new, :create]
    resources :favorites, only: [:create]
  end
  resources :favorites, only: [:index]
end
