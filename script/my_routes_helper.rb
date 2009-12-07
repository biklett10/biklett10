#
# my_routes_helper.rb
#

# From ch 21 of the rails book 3rd ed.

# script/console

  rs= ActionController::Routing::Routes

  puts rs.routes 

  rs.recognize_path "/users"

  rs.generate :controller => :users

  rs.generate :controller => :users, :action => :show
