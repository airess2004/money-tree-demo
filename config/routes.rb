Rails.application.routes.draw do
  
  get 'administrator/User'

  get 'administrator/index'

  devise_for :users
  root 'pages#index'
  
  namespace :administrator do
    # devise_for :admins
    # root 'administrator#index'
    resources :users
    get 'search_items' => 'items#search', :as => :search_item, :method => :get
    get 'index'
    get 'user_list/list' => 'user_list#list'
    get 'user_list/show' => 'user_list#show'
  end
  
  get 'pages/login_facebook'
  # get 'pages/step1'
  get 'pages/step2'
  get 'pages/step3'
  get 'pages/step4'
  get 'pages/step1' => "pages#step1", :as => :pages_step1
  post 'pages/create_user' => "pages#create_user", :as => :pages_create_user
  post 'save_to_session' =>"pages#save_to_session"
  post 'create' =>"pages#create"
  resources :users
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
