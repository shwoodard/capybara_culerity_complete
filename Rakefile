require 'rake/testtask'
require 'bundler'
Bundler::GemHelper.install_tasks

Rake::TestTask.new(:test_sinatra) do |t|
  t.libs << "test"
  t.pattern = 'test/requests/sinatra/**/*_test.rb'
  t.verbose = true
end

Rake::TestTask.new(:test_rails) do |t|
  t.libs << "test"
  t.pattern = 'test/requests/rails/**/*_test.rb'
  t.verbose = true
end

task :default => :test_rails
