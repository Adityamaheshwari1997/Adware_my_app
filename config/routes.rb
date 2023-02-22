Rails.application.routes.draw do
  get 'users/new'
  get 'users/edit'
  get 'sessions/index'
  root 'static_page#home'
  get 'screens/index'
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/destroy'
  # get 'theaters/index'
  # root 'theaters#index'
  resources :theaters do 
    resources :screens do
      resources :movies
    end
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
