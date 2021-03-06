Rails.application.routes.draw do
  get 'todos/list'
  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit'
  patch 'todos/:id', to: 'todos#update'
  resources :todos
  get 'todos/:id/complete', to: 'todos#complete', as: 'completed'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
