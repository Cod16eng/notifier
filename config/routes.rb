Rails.application.routes.draw do

  root 'invoices#index'
  resources :users  
  resources :invoices do
    collection { post :import }
  end
  resources :customers do
    collection { post :import }
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
