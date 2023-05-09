Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/articles/new', to: 'articles#new', as: :new_article
  get '/articles/index', to: 'articles#index', as: :articles
  post '/articles', to: 'articles#create'

  get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  get '/articles/:id', to: 'articles#show', as: :article
  patch '/articles/:id', to: 'articles#update'

  delete '/articles/:id', to: 'articles#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end
