Lcbobuddy::Application.routes.draw do
  root to: 'pages#home'
  resources :products, :only => [:index]
end
