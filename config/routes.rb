Rails.application.routes.draw do
   # index in the browser to list all articles
  get 'articles', to: 'articles#index'
  # display NEW article form in the browser
  get 'articles/new', to: 'articles#new'
  # Create a new articl in the serrver
  post 'articles', to: 'articles#create'
  # Edit FORM to update the article
  get 'articles/:id/edit', to: 'articles#edit', as: :edit
  # UPDATE in the server
  patch 'articles/:id', to: 'articles#update'
  # to read one article
  get 'articles/:id', to: 'articles#show', as: :article
  # delete an article
  delete 'articles/:id', to: 'articles#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
