require 'helper'

TEST_SINATRA_ROOT = File.expand_path('../fixtures/sinatra_root', __FILE__)
load File.join(TEST_SINATRA_ROOT, 'capybara_culerity_complete_test_app.rb')

Capybara.configure do |capybara|
  capybara.app = CapybaraCulerityCompleteTestApp
end
