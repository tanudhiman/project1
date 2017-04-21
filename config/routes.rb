Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #devise_for :admin_users, ActiveAdmin::Devise.config
  #ActiveAdmin.routes(self)

  devise_for :users ,:controllers => { :registrations => "users" , :omniauth_callbacks => "callbacks" }

  root 'welcome#index'
  get 'show1', to: "projects#show1"
  get'view1', to: 'projects#view1'
  post'status', to: 'assigns#status'

  post'final_status', to: 'projects#final_status'
  get'image_download', to: 'projects#image_download'
  resources :projects
  resources :assigns
end
