Rails.application.routes.draw do
  get "answers/summary"
  get "answers/about"
  devise_for :users
  root "answers#index"
  resources :answers
end
