# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Titlematches::Application.initialize!

# Date Formatting - BLOG THIS [DBU 12/23/12]
Date::DATE_FORMATS[:default] = "%m/%d/%Y"
Time::DATE_FORMATS[:default] = "%m/%d/%Y %H:%M"