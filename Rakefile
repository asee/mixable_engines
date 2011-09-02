# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "mixable_engines"
  gem.homepage = "http://github.com/asee/mixable_engines"
  gem.license = "MIT"
  gem.summary = %Q{Makes engines "mixable" - classes in the app directory will be mixed in with the main application.}
  gem.description = %Q{In the old Engines plugin (used before the built-in engines arrived in rails 2.3), controller and helper classes were mixed together.  That is, if an engine had a FooController, and your application also had a FooController, you could use the actions in both controllers.  In the built-in Engines functionality in Rails 3, this does not occur.  Your application's FooController replaces the engine controller entirely.

  This gem restores the old functionality, allowing you to easily override parts of an engine in your application. }
  gem.email = "tim@timothymorton.com"
  gem.authors = ["Tim Morton"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
  test.rcov_opts << '--exclude "gems/*"'
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "mixable_engines #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
