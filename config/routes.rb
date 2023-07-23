Rails.application.routes.draw do
  resources :jobapplications do
      resources :commentarios
    end
  devise_for :users

  root 'jobapplications#index'

  get 'about' => 'pages#about'
end

