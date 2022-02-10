# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"
# GET /about

Rails.application.routes.draw do
  root to: "main#index"
  get "about-us", to: "about#index", as: :about
end
