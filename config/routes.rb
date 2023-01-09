Rails.application.routes.draw do
  
  root "articles#index"
  resources :articles, only: [:show]

  devise_for :users,
    path: '',
    path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
    controllers: {
      omniauth_callbacks: 'omniauth_callbacks'
    }
end

