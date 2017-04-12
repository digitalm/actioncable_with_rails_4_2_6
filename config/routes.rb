Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  resources :messages, only: %i(index create)
end
