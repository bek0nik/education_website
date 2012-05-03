EducationWebsite::Application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do 
    resources :comments
    resources :images
    resources :categories
    resources :specialities
    resources :questions
    resources :universities do
      post 'rate', :on => :member
    end
    
    resources :authentications
    match '/auth/:provider/callback' => 'authentications#create'
    resources :users
    resource :sessions
    get "signup" => 'users#new', :as => :signup
    get "login" => 'sessions#new', :as => :login
    get "logout" => 'sessions#destroy', :as => :logout
    resources :test_names do
      get "start", :on => :member, :as => :start
    end
    get "pages/index"
    match '/about' => 'pages#about', :as => :about
    
    root :to => 'pages#index'
  
  
    match "admin" => "admin#index", :as => :admin
    namespace :admin do
      resources :questions
      resources :test_names
      resources :universities do
        resources :images, :only => [:create, :destroy]
          get "add_img", :on => :member, :as => :add_img
      end
      resources :specialities
      resources :categories  
    end
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  match '', to: redirect("/#{I18n.default_locale}")
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
