Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[edit update destroy show] do
    resources :boats do
      resources :reviews, only: %i[create destroy]
    end
  end
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
