#!/bin/bash
# script/start_selenium_server.sh
# Run this in a separate window from RAILS_ROOT
export RAILS_ENV=test
export ss_jar=vendor/gems/webrat-0.4.4/vendor/selenium-server.jar
 
/usr/bin/java -jar ${ss_jar} -multiwindow
 
