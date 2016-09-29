Rails.application.routes.draw do
  root 'pages#home'
  resources :comments
  resources :reports
end
