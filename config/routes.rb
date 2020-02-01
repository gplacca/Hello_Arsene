Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :teams, only: [:show] do
    resources :trainings, only: [:create]
  end
  resources :trainings, only: [:edit, :index]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
