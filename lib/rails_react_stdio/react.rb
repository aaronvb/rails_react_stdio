require 'json'
require 'open3'
module RailsReactStdio
  class React
    class << self
      def render(component_path, props)
        react_stdio_hash = { component: component_path, props: props }
        react_stdio_json = react_stdio_hash.to_json
        results = open_stdio(react_stdio_json)
        results_hash = JSON.parse(results)
        parse_stdout(results_hash)
      end

      private

      def open_stdio(json)
        stdin, stdout =
          Open3.popen3(RailsReactStdio.configuration.react_stdio_path)
        stdin.puts(json)
        stdin.close
        stdout.gets
      end

      def parse_stdout(results)
        if results['error']
          return results['error']
        elsif results['html']
          return results['html']
        end
        'Error sending stdin to react-stdio.'
      end
    end
  end
end
