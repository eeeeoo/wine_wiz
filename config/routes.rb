Rails.application.routes.draw do
  resources :recommendations, only: %i[index edit create new update destroy]
  resources :pairings, only: %i[index]
  resources :categories, only: %i[index]
  resources :wines, only: %i[index show] do
    resources :reviews, only: %i[new create edit update]
  end
  resources :users, only: %i[new create show edit update]
  resources :sessions, only: %i[new create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
