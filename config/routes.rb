Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :teams, only: [:show] do
    resources :trainings, only: [:create, :index]
  end

  resources :trainings, only: [:edit, :show] do
    resources :exercise, only: [:show]
    resources :training_exercises, only: [:new, :create, :show, :destroy, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'joke' => 'pages#joke', as: :joke
end
