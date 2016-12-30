Rails.application.routes.draw do
  root 'admin/moderators#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do 
  	resources :moderators, only:[:index, :edit, :update]
  end
end
