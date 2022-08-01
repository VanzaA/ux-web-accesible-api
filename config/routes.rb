Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'login', action: :login, controller: 'session'
  resources :issues, only: [:index, :create] do;  end
end
