RG::Application.routes.draw do
  resources :publications

  resources :jobs

  resources :answers

  resources :questions

  resources :skills

  resources :users

  root 'users#profile'

  match '/add_skill' => 'users#add_skill', :as => 'add_skill', :via => :post

  match '/remove_skill' => 'users#remove_skill', :as => 'remove_skill', :via => :post

  match '/add_skill_to_question' => 'questions#add_skill_to_question', :as => 'add_skill_to_question', :via => :post

  match '/add_skill_to_job' => 'jobs#add_skill_to_job', :as => 'add_skill_to_job', :via => :post

  match '/add_skill_to_publication' => 'publications#add_skill_to_publication', :as => 'add_skill_to_publication', :via => :post
  
  match '/add_answer_to_question' => 'questions#add_answer_to_question', :as => 'add_answer_to_question', :via => :post

  match '/apply_to_job' => 'jobs#apply_to_job', :as => 'apply_to_job', :via=> :patch

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
