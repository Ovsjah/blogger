Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles  # RESTful model of web interaction with articles
end
