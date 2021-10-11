Rails.application.routes.draw do

  root "kittens#index"

  get "/kittens", to: "kittens#index"
  post "/kittens", to: "kittens#create"

  get "/kittens/new", to: "kittens#new", as: 'new_kitten'

  get "/kittens/:id", to: "kittens#show", as: 'kitten'

  get "/kittens/:id/edit", to: "kittens#edit", as: 'edit_kitten'

  patch "/kittens/:id", to: "kittens#update", as: 'update_kitten'

  delete "/kittens/:id", to: "kittens#destroy", as: 'delete'


end
