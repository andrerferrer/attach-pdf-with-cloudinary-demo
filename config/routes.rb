Rails.application.routes.draw do
  root to: "articles#new"
  resources :articles, only: %i[ show new create ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
