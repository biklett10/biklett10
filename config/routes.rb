ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new"
  # bikle
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  # bikle
end
