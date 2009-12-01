# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
require "declarative_authorization/maintenance"
include Authorization::Maintenance

require "authlogic_bundle/maintenance"
include AuthlogicBundle::Maintenance
AuthlogicBundle::Maintenance.speak = true

create_roles_from_rule_file

root = create_user_by_login('root', ['admin'])

without_access_control do
end
