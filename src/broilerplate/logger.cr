require "colorize"

# Used to make our standard output look nice
module Broilerplate::Logger
  # Set the default spacing value
  SPACING = "   "
  # A constant used to help the `define_levels` macro
  LEVELS = [
    {:name => :success, :color => :green, :symbol => "✓"},
    {:name => :working, :color => :yellow, :symbol => "🏋️"},
    {:name => :error, :color => :red, :symbol => "☠️"},
  ]

  # Define logging methods from the LEVELS constant
  macro define_levels
    {% for level in LEVELS %}
      def self.{{level[:name].id}}(msg)
        puts "{{level[:symbol].id}}#{SPACING}#{msg}".colorize({{level[:color]}})
      end
    {% end %}
  end

  define_levels
end
