require "action_controller/railtie"

module CapybaraCulerityCompleteTest
  class Application < Rails::Application
    config.root = File.expand_path('../..', __FILE__)
  end
end

Rails.application.config.secret_token = '51d4d2a1b01114fc5a60159daf5dd9c3'
Rails.application.config.active_support.deprecation = :stderr
