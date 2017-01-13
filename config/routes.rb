Rails.application.routes.draw do
  resources :drawings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "drawings#new"
end
