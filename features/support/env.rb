
ENV['RAILS_ENV'] ||= "test"

require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')

require 'webrat'
Webrat.configure do |config|
  config.mode = :rails
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'
Cucumber::Rails.use_transactional_fixtures


