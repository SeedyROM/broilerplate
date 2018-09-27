require "colorize"

module Broilerplate::Logger
  @@spacing = "    "

  @@success_color = :green
  @@working_color = :yellow
  @@error_color = :red

  @@success_symbol = "✓"
  @@working_symbol = "🏋️"
  @@error_symbol = "☠️"

  def self.working(msg)
    puts "#{@@working_symbol}#{@@spacing}#{msg}".colorize(@@working_color)
  end
  def self.success(msg)
    puts "#{@@success_symbol}#{@@spacing}#{msg}".colorize(@@success_color)
  end
  def self.error(msg)
    puts "#{@@error_symbol}#{@@spacing}#{msg}".colorize(@@error_color)
  end
end
