Rails.application.routes.draw do
  root to: 'farmars#index'

   resources :sales
   resources :products
   resources :markets
   resources :vendors

  delete 'vendors/vendor_delete_self/:id'=>'vendors#delete_self', as: 'delete_self'


  #
  # get 'sale/index'
  #
  # get 'sale/new'=> 'sale#new', as: "sale_new"
  #
  # get 'sale/create'
  #
  # get 'sale/edit'
  #
  # get 'sale/update'
  #
  # get 'sale/destroy'
  #
  # get 'sale/show'
  #
  #
  # get 'products/index'
  #
  # get 'products/new'=> 'products#new', as: "products_new"
  #
  # post 'products/create'=> 'products#create', as: "products_create"
  #
  # get 'products/edit'
  #
  # get 'products/update'
  #
  # get 'products/destroy/:id'=>'products#destroy', as: "products_destroy"
  # delete 'products/destroy/:id'=>'products#destroy'
  #
  # get 'product/show'
  #
  #
  # get 'farmars/index' => 'farmars#index', as: "index"
  #
  #
  # get 'vendors/index' => 'vendors#index', as: "vendors"
  #
  # get 'vendors/new' => 'vendors#new', as: "vendors_new"
  #
  # post 'vendors/create' => 'vendors#create', as: "vendors_create"
  #
  # get 'vendors/show/:id' => 'vendors#show', as: "vendors_show"
  #
  # get 'vendors/edit' => 'vendors#edit', as: "vendors_edit"
  #
  # patch 'vendors/update' => 'vendors#update', as: "vendors_update"
  #
  # delete 'vendors/destroy' => 'vendors#destroy', as: "vendors_destroy"
  #
  #
  # get 'markets/index' => 'markets#index', as: "markets"
  #
  # get 'markets/new' => 'markets#new', as: "markets_new"
  #
  # post 'markets/create' => 'markets#create', as: "markets_create"
  #
  # get 'markets/show/:id' => 'markets#show', as: "markets_show"
  #
  # get 'markets/:id/edit' => 'markets#edit', as: "markets_edit"
  #
  # patch 'markets/:id/update' => 'markets#update', as: "markets_update"
  #
  # delete 'markets/destroy' => 'markets#destroy', as: "markets_destroy"

  resources "vendors" do
    resource "products"
  end

  resources "vendors" do
    resource "sales"
  end

  resources 'markets' do
    resource 'vendor'
  end


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
