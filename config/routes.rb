Scrum::Application.routes.draw do
  root :to => "activity#taskboard", :as => 'root'

  match 'sprint/create_pbi' => 'sprint#create_pbi', :as => 'create_pbi'
  match 'sprint/update_pbi' => 'sprint#update_pbi', :as => 'update_pbi'
  match 'sprint/delete_pbi' => 'sprint#delete_pbi', :as => 'delete_pbi'
  match 'sprint/assign_pbi_to_sprint' => 'sprint#assign_pbi_to_sprint', :as => 'assign_pbi_to_sprint'
  
  match 'activity/create_activity/:pbi_id' => 'activity#create_activity', :as => 'create_activity'
  match 'activity/update_activity' => 'activity#update_activity', :as => 'update_activity'
  match 'activity/delete_activity' => 'activity#delete_activity', :as => 'delete_activity'
  match 'activity/change_activity_status' => 'activity#change_activity_status', :as => 'change_activity_status'

  match 'sprint/assign_pbi' => 'sprint#assign_pbi', :as => 'assign_pbis'
  match 'activity/taskboard' => 'activity#taskboard', :as => 'taskboard'

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
