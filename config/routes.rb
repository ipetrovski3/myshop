Rails.application.routes.draw do
  devise_for :admins
  root 'pages#home'

  resources :categories do
    resources :products, shallow: true do
      resources :orders, shallow: true
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
