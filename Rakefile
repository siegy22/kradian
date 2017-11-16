require "bundler/gem_tasks"
require "bundler/setup"
require "rake/testtask"
require "kradian"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :test

desc "Sync kradian's steam to discord"
task :sync do
  Kradian.sync_steam_to_discord
end
