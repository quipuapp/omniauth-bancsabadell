# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Load custom configuration
CUSTOM_CONFIG = YAML.load_file("#{Rails.root}/config/app.yml")[Rails.env]

# Initialize the Rails application.
Rails.application.initialize!
