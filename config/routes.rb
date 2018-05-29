Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :companies
  get "pages/dashboard", to: "pages#dashboard"
  get "pages/company_dashboard", to: "pages#company_dashboard"
  devise_for :users, controllers: { registrations: "registrations" }

end
