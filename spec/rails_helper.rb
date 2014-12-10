ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/rails'
require 'shoulda/matchers'
require 'spec_helper'
require 'vcr'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!
OmniAuth.config.test_mode = true

VCR.configure do |c|
  c.cassette_library_dir = './spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
end

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end
