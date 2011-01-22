require 'active_support/concern'
require 'capybara'
require 'capybara/dsl'
require 'culerity'
require 'socket'
require 'timeout'

module CapybaraCulerityComplete
  module Capybara
    extend ActiveSupport::Concern

    module ClassMethods
      def is_port_open?(ip, port)
        begin
          Timeout::timeout(1) do
            begin
              s = TCPSocket.new(ip, port)
              s.close
              return true
            rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH
              return false
            end
          end
        rescue Timeout::Error
        end

        return false
      end
    end

    included do
      include ::Capybara

      ::Capybara.configure do |capybara|
        capybara.default_driver = :culerity
      end

      if is_port_open?('127.0.0.1', '2113')
        Culerity.jruby_invocation = "#{File.expand_path('../../../vendor/bin/ng', __FILE__)} org.jruby.Main"
      else
        Culerity.jruby_invocation = "java -Xms32m -Xmx1024m -jar #{File.expand_path('../../../vendor/jruby-complete-1.5.6.jar', __FILE__)}"
      end
    end
  end
end
