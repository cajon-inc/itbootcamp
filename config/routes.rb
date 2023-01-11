Rails.application.routes.draw do
  
  root "articles#index"
  resources :articles, only: [:show]
  # get 'line_login_api/login', to: 'line_login_api#login'
  # get 'line_login_api/callback', to: 'line_login_api#callback'

  devise_for :users,
    path: '',
    path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
    controllers: {
      omniauth_callbacks: 'omniauth_callbacks',
      line_login_api: 'line_login_api#callback'
    }
end

