FullcalendarRails::Application.routes.draw do
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
  root :to => 'events#index'
  resources :events do 
    collection do 
      get :get_events
      post :move
      post :resize
    end
  end
end


# ActionController::Routing::Routes.draw do |map|
#   # The priority is based upon order of creation: first created -> highest priority.

#   # Sample of regular route:
#   #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
#   # Keep in mind you can assign values other than :controller and :action

#   # Sample of named route:
#   #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
#   # This route can be invoked with purchase_url(:id => product.id)

#   # Sample resource route (maps HTTP verbs to controller actions automatically):
#   #   map.resources :products

#   # Sample resource route with options:
#   #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

#   # Sample resource route with sub-resources:
#   #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
#   # Sample resource route with more complex sub-resources
#   #   map.resources :products do |products|
#   #     products.resources :comments
#   #     products.resources :sales, :collection => { :recent => :get }
#   #   end

#   # Sample resource route within a namespace:
#   #   map.namespace :admin do |admin|
#   #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
#   #     admin.resources :products
#   #   end

#   # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
#    map.root :controller => "events"

#   # See how all your routes lay out with "rake routes"

#   # Install the default routes as the lowest priority.
#   # Note: These default routes make all actions in every controller accessible via GET requests. You should
#   # consider removing or commenting them out if you're using named routes and resources.
#   map.connect ':controller/:action/:id'
#   map.connect ':controller/:action/:id.:format'
# end
