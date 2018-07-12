Rails.application.routes.draw do
  resources :recommendations
  resources :pairings
  resources :categories
  resources :wines do
    resources :reviews, only: [:new, :create, :destroy, :edit, :show, :update]
  end
  resources :users, only: %i[new create show edit update]
  resources :sessions, only: %i[new create]
  delete '/logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
