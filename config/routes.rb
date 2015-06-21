Rails.application.routes.draw do
  devise_for :users
  resources :podcasts

  get 'about', to: 'pages#about'
  root to: 'podcasts#index'
end
