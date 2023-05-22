Rails.application.routes.draw do
  root to: "main#index"

  # Login
  get "login", to: "login#index"
  post "login", to: "login#create"
  delete "login", to: "login#destroy"

  # Register
  get "register", to: "register#new"
  post "register", to: "register#create"

    # Fridge
    get "fridge", to: "fridge#index"
end
