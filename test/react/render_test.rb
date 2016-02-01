require 'test_helper'
require 'rails_react_stdio'

class ReactRenderTest < Minitest::Test
  context 'a rails react stdio' do
    should 'have a default react-stdio path' do
      RailsReactStdio.configuration.react_stdio_path =
        '/usr/local/bin/react-stdio'
    end
  end

  context 'a rails react studio render' do
    setup do
      @path_to_component =
        File.expand_path('../../helper_files/Hello.jsx', __FILE__)
    end

    should 'output a string' do
      result = RailsReactStdio::React.render(@path_to_component, {})
      assert_equal String, result.class
    end

    should 'output html' do
      result = RailsReactStdio::React.render(@path_to_component, {})
      assert_includes result, 'data-reactid'
    end

    should 'not load a component' do
      result = RailsReactStdio::React.render('', {})
      assert_includes result, 'Cannot load component'
    end

    should 'pass props to component' do
      result =
        RailsReactStdio::React.render(
          @path_to_component, message: 'foobar_message'
        )
      assert_includes result, 'foobar_message'
    end
  end
end
