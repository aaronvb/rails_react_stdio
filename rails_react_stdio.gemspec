# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'rails_react_stdio/version'

Gem::Specification.new do |s|
  s.name = 'rails_react_stdio'
  s.version = RailsReactStdio::VERSION
  s.summary = 'Rails wrapper for react-stdio.'
  s.description = 'Use react-stdio in your Ruby on Rails app.'
  s.homepage = 'https://github.com/aaronvb/rails_react_stdio'
  s.license = 'MIT'

  s.author = ['Aaron Van Bokhoven']
  s.email = ['bokhoven@gmail.com']

  s.add_development_dependency 'coveralls', '>= 0.8.10'
  s.add_development_dependency 'minitest-reporters', '>= 1.1.7'
  s.add_development_dependency 'shoulda-context', '>= 1.2.1'

  s.add_dependency 'rails', '>= 3.2'

  s.files = Dir[
    'lib/**/*',
    'README.md',
    'CHANGELOG.md',
    'LICENSE'
  ]

  s.require_paths = ['lib']
end
