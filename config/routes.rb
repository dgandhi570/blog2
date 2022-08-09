Rails.application.routes.draw do
  root "articles#index"
  
    resources :articles do
      resources :comments
    end
    get "sign_up", to: "registrations#new"

    post "sign_up", to: "registrations#create"


end
