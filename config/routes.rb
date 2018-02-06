Rails.application.routes.draw do
  root to: 'homes#index'

  resources :homes
  resources :rooms

  patch '/chores/:id', to: 'chores#update', as: 'update_chore'
  get '/chores/dismiss_chore/:id', to: 'chores#dismiss_chore', as: 'dismiss_chore'
  get '/chores/meta/:id', to: 'chores#meta', as: 'chore_meta'
  resources :chores

  get '/chore_prerequisites/new', to: 'chore_prerequisites#new', as: 'new_prerequisite'
  post '/chore_prerequisites/new', to: 'chore_prerequisites#create', as: 'create_prerequisite'
  get '/chore_prerequisites/show', to: 'chore_prerequisites#show', as: 'chore_prerequisite'

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
