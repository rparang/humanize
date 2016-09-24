Rails.application.routes.draw do
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  root 'pages#index'

  get 'product' => 'pages#product'
  get 'about' => 'pages#about'
  get 'landing' => 'pages#landing'
  get 'checkout' => 'pages#checkout'
  get 'buy' => 'pages#buy'

end
