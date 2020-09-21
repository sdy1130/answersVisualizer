Rails.application.routes.draw do
  get "answers/summary"
  devise_for :users
  root "answers#index"
  resources :answers
end
