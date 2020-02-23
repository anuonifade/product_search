Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/products', to: 'products#index'
      get '/products/search', to: 'products#search'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
