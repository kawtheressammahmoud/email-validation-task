Rails.application.routes.draw do
  root 'validations#index'
  resources :validations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
