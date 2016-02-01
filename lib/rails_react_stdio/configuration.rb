module RailsReactStdio
  def self.configure
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new(
      react_stdio_path: '/usr/local/bin/react-stdio'
    )
  end

  # Configuration Class
  class Configuration
    attr_accessor :react_stdio_path

    def initialize(react_stdio_path: nil)
      self.react_stdio_path = react_stdio_path
    end
  end
end
