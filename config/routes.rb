Rails.application.routes.draw do

  # '/'
  root 'pages#index'

  # Pages
  get 'product' => 'pages#product'
  get 'about' => 'pages#about'
  get 'landing' => 'pages#landing'
  get 'checkout' => 'pages#checkout'
  get 'buy' => 'pages#buy'

  # Ads and SEO
  get 'blackheads' => 'pages#checkout'
  get 'blackhead_tool' => 'pages#checkout'

  # SSL using Lets Encrypt
  get '/.well-known/acme-challenge/kKywmgzP12kpgqDwewKpeVtJ6c7M7NSN2E-63-ECALE' => 'pages#letsencrypt'

  resources :charges

end
