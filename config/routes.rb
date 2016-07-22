Rails.application.routes.draw do


resources :admin
resources :buyer
resources :seller



resources :slider_subcategory_display_pic do 
  member do
    get :save
  end
end

#root 'sign_in_sign_up#user_sign_in_sign_up'
root 'frontend_pages/frontend_page#latest'
resources :category do
  
  resources :subcategory do
    
    resources :product
  
  end

  resources :brand

end


# header

get 'frontend_pages/frontend_page/latest'
get 'frontend_pages/frontend_page/home_and_living'
get 'frontend_pages/frontend_page/kitchen_and_dining'
get 'frontend_pages/frontend_page/detail_page'


# sign_in_sign_up_ontroller

post 'sign_in_sign_up/buyer_sign_up'
get 'sign_in_sign_up/seller_business_account_sign_up'
get 'sign_in_sign_up/user_sign_in'
get 'sign_in_sign_up/user_sign_in_sign_up'
post 'sign_in_sign_up/signed_in'
# admin_panel_dashboard

# category_controller
get 'admin_panel_dashboard/category/new'
post 'admin_panel_dashboard/category/create'
get 'admin_panel_dashboard/category/index'
get 'admin_panel_dashboard/category/edit'
post 'admin_panel_dashboard/category/update'

# admin_panel_dashboard_frontend_pages

get 'admin_panel_dashboard/admin_panel_dashboard_frontend_pages/header_categories'
get 'admin_panel_dashboard/admin_panel_dashboard_frontend_pages/categories_subcategories'
get 'admin_panel_dashboard/admin_panel_dashboard_frontend_pages/brands'
get 'admin_panel_dashboard/admin_panel_dashboard_frontend_pages/users'
get 'admin_panel_dashboard/admin_panel_dashboard_frontend_pages/slider_display_pics'


# seler_panel_dashboard

get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/add_product'
get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/view_products'
get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/account_information'
get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/comments'
get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/messages'
get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/order_products'
get 'seller_panel_dashboard/seller_panel_dashboard_frontend_pages/sold_products'













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
