LocalGrowth::Application.routes.draw do
    root 'static_pages#home'
  match '/maps', to: 'gmaps#index', via: 'get'
  
  # Authentication
  devise_for :admins
  devise_for :users , path_names: {sign_in: "login",sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  # Users
  resources :users do
    member do
      get :following, :followers
    end
  end

  # All the resources
  resources :entertainment_categories
  resources :entertainment_stores
  resources :food_categories
  resources :food_stores
  resources :other_categories
  resources :other_stores
  resources :events
  resources :deals
  resources :feedback_messages
  resources :poll_votes, only: [:create, :destroy]

  namespace :relation do
    resources :relationships, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
    resources :attendings, only: [:create, :destroy]
  end

  # Matching
  match '/help',    to: 'static_pages#help' ,   via: 'get'
  match '/about',   to: 'static_pages#about' ,  via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/info', to: 'static_pages#info', via: 'get'
  match '/legal', to: 'static_pages#legal', via: 'get'
  match '/temp', to: 'static_pages#temp', via: 'get'



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'fun_stores#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
