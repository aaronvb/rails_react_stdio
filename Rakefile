require 'rake/testtask'

# make sure we load NPM dependencies in the helper_files directory
config_path = File.expand_path('../test/helper_files', __FILE__)
`cd #{config_path} && npm install`

Rake::TestTask.new do |task|
  task.libs << %w(test lib)
  task.pattern = 'test/**/*_test.rb'
end

task default: :test
