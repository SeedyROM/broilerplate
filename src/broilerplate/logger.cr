require "colorize"

module Broilerplate::Logger
  SPACING = "    "
  LEVELS = [
    {:name => :success, :color => :green, :symbol => "✓"},
    {:name => :working, :color => :yellow, :symbol => "🏋️"},
    {:name => :error, :color => :red, :symbol => "☠️"},
  ]

  macro define_levels
    {% for level in LEVELS %}
      def self.{{level[:name].id}}(msg)
        puts "{{level[:symbol].id}}#{SPACING}#{msg}".colorize({{level[:color]}})
      end
    {% end %}
  end

  define_levels
end
