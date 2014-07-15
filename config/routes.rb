Rails.application.routes.draw do
  resources :podcasts

  get 'about', to: 'pages#about'
  root to: 'pages#about'
end
