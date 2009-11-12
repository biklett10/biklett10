#!/bin/bash
# script/start_selenium_server.sh
# Run this in a separate window from RAILS_ROOT
export RAILS_ENV=selenium
export ss_jar=vendor/gems/webrat-0.4.4/vendor/selenium-server.jar
 
/usr/bin/java -jar ${ss_jar} -multiwindow > /dev/null 2>&1 &
# Start mongrel with debugger and on port 3001
script/server --debugger -p 3001
