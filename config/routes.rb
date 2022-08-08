Rails.application.routes.draw do
  root "articles#index"
  resources :users do
    resources :articles do
      resources :comments
    end
  end

end
