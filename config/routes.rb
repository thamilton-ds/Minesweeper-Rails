Rails.application.routes.draw do
  root to: "boards#index"

  resources :boards, only: [:show, :create, :new]

  post "boards/:id", to: 'boards#open' #show
  get "lists", to: 'boards#lists'
end
