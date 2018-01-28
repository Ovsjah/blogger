Rails.application.routes.draw do
  root to: 'articles#index'
  
  resources :articles do  # RESTful model of web interaction with articles
    resources :comments
  end
end
