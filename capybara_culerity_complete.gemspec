# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capybara_culerity_complete/version"

Gem::Specification.new do |s|
  s.name        = "capybara_culerity_complete"
  s.version     = CapybaraCulerityComplete::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sam Woodard"]
  s.email       = ["sam@activecodebase.com"]
  s.homepage    = ""
  s.summary     = %q{A complete solution for headless acceptance testing with jruby jar wrapped inside.}
  s.description = %q{A complete solution for headless acceptance testing with jruby jar wrapped inside.}

  s.rubyforge_project = "capybara_culerity_complete"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "capybara", "~>0.4.1.1"
  s.add_runtime_dependency "weakling", "~>0.0.3"
  s.add_runtime_dependency "activesupport", "~>3.0.3"

  s.add_development_dependency "rails", "~>3.0.3"
  s.add_development_dependency "sinatra", "~>1.1.2"
  s.add_development_dependency "thin", "~>1.2.7"
  s.add_development_dependency "ZenTest", "~>4.4.2"
end
