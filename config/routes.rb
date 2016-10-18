Rails.application.routes.draw do
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  root 'pages#index'

  # Pages
  get 'product' => 'pages#product'
  get 'about' => 'pages#about'
  get 'landing' => 'pages#landing'
  get 'checkout' => 'pages#checkout'
  get 'buy' => 'pages#buy'

  # Ads and SEO
  get 'blackheads' => 'pages#product'
  get 'blackhead_tool' => 'pages#product'

  # SSL using Lets Encrypt
  get '/.well-known/acme-challenge/kKywmgzP12kpgqDwewKpeVtJ6c7M7NSN2E-63-ECALE' => 'pages#letsencrypt'

end
