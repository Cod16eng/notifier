Rails.application.routes.draw do

  root 'invoices#index'
  resources :invoices do
    collection { post :import }
  end
  resources :customers do
    collection { post :import }
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
