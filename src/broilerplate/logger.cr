require "colorize"

module Broilerplate::Logger
  # Set the default spacing value
  SPACING = "   "
  # The contstant our define_levels macro will use to generate our methods
  LEVELS = [
    {:name => :success, :color => :green, :symbol => "✓"},
    {:name => :working, :color => :yellow, :symbol => "🏋️"},
    {:name => :error, :color => :red, :symbol => "☠️"},
  ]

  # Define loggin methods based on the constant LEVELS
  macro define_levels
    {% for level in LEVELS %}
      def self.{{level[:name].id}}(msg)
        puts "{{level[:symbol].id}}#{SPACING}#{msg}".colorize({{level[:color]}})
      end
    {% end %}
  end

  # Execute the Loggin helper macro
  define_levels
end
