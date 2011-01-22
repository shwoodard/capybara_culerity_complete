require 'helper'
require 'rack'
require 'rails'

TEST_RAILS_ROOT = File.expand_path('../fixtures/rails_root', __FILE__)
load File.join(TEST_RAILS_ROOT, 'config/environment.rb')

require 'capybara/rails'
