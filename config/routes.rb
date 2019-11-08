Rails.application.routes.draw do
  match("/", { :controller => "application", :action => "directory", :via => "get" })
  match("/first_target", { :controller => "application", :action => "first", :via => "get" })
  match("/second_target", { :controller => "application", :action => "second", :via => "get" })





  # Your routes go above
  # --------------------
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
