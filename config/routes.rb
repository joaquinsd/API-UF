Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :units
  get 'uf/:date', to: 'units#uf'
  get 'client/:client', to: 'customers#client'
end
