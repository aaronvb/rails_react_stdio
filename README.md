# rails_react_stdio

This is a simple Ruby on Rails wrapper for [react-stdio](https://github.com/mjackson/react-stdio).

If you're not familiar with react-stdio, here's a snippet from their repo:

> react-stdio lets you render React components on the server, regardless of the backend technology you're using.

## Requirements
- [npm](https://www.npmjs.com/)
- [react-stdio](https://github.com/mjackson/react-stdio)
- [Ruby on Rails](http://rubyonrails.org/)

## Installation
Add `rails_react_stdio` to your gemfile:

```ruby
gem 'rails_react_stdio', '~> 0.1.0'
```

If your path to react-stdio is not installed in the default location `/usr/local/bin/react-stdio`, add a configuration file to your initializers folder.

```ruby
RailsReactStdio.configure do |config|
  config.react_stdio_path = '/your/path/to/react-stdio'
end
```

## Usage

Using rails_react_stdio is very _simple_. You just need to provide a location to your component file, and any props you wish to pass to it as a hash.

```ruby
path_to_component = ::Rails.application.assets['components/HelloWorld'].filename

RailsReactStdio::React.render(path_to_component, {message: "aaron"})

> "<p data-reactid=\".1on4o1jtdds\" data-react-checksum=\"359665029\">Hello, aaron</p>"
```
