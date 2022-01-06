Rails.application.routes.draw do
  resources :posts do
    get 'responses'
    get 'respond'
    get 'more', on: :collection
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
