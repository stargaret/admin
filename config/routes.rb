Rails.application.routes.draw do
  ##############################################################
  # Routes for plugins
  ##############################################################
 	devise_for :users, :skip => [:sessions]
	as :user do
	  get 'signin' => 'admin/sessions#new', :as => :new_user_session
	  post 'signin' => 'admin/sessions#create', :as => :user_session
	  delete 'signout' => 'admin/sessions#destroy', :as => :destroy_user_session
	end

end