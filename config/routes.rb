Rails.application.routes.draw do
  devise_for :admins
  root 'pages#home'
  get '/admin', to: 'pages#administration'

  resources :categories do
    resources :products, except: %i[new create], shallow: true do
      resources :orders, shallow: true, except: %i[index edit]
    end
  end

  get '/admin/products/new', to: 'products#new'
  post '/admin/products/new', to: 'products#create'
  get '/admin/orders', to: 'orders#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
