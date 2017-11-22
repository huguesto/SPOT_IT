Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users

  root to: 'places#index'
  resources :places, only: [:show] do
    collection do
      get '/filter', to: "places#filter" 
    end
    resources :spots, only: [:new, :create]
    resources :favorites, only: [:create]
  end
  resources :spots, only: [:index]
  resources :favorites, only: [:index]
end
