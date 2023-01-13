Rails.application.routes.draw do
  
  root "pages#home"
  resources :articles, only: [:index, :show]
  get 'about', to: 'pages#about'

  devise_for :users,
    path: '',
    path_names: {sign_up: 'register', sign_in: 'login', edit: 'profile', sign_out: 'logout'},
    controllers: {
      omniauth_callbacks: 'omniauth_callbacks'
    }
end

