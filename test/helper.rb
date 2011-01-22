ENV['RAILS_ENV'] ||= 'test'

require 'rubygems'
require 'test/unit'
require 'socket'
require 'timeout'
require 'capybara_culerity_complete/capybara'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each {|f| load f }

Capybara.configure do |capybara|
  capybara.default_selector = :css
end

class Test::Unit::TestCase
  include CapybaraCulerityComplete::Capybara
end
