Rails.application.routes.draw do
  get "welcome/index"
  root "answers#index"
end
