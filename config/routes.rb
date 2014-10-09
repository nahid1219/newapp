Opengrok::Application.routes.draw do
  resources :projectusers

  resources :projects

  get "projects/permission"
  devise_for :admins
  resources :users

  devise_scope :admin do
    get "admins", to: "devise/sessions#new"
  end
  #devise_for :users
  root 'opengrok_pages#index'
  #get "opengrok_pages/index"
  match '/help', to: 'opengrok_pages#help', via: 'get'
  match '/report', to: 'opengrok_pages#load', via: 'get' 
  #get "opengrok_pages/show"
  get "opengrok_pages/load"
  get "opengrok_pages/text"
  get "opengrok_pages/test"
  get "/projects/permission"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
