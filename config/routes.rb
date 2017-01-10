Rails.application.routes.draw do
  resources :role_users
  resources :roles
  resources :w_tables
  resources :geometry_classes
  get 'welcome/index', as: :index 
  get 'welcome/insufficient_privileges', as: :ip
  
  resources :computers
  root :to => 'welcome#index'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
