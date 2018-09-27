require "admiral"
require "colorize"

class Broilerplate::CLI < Admiral::Command
  class Generate < Admiral::Command
    def run
      puts "Generating...".colorize(:yellow)
    end
  end

  register_sub_command generate : Generate,
    description: "Generate a template"

  define_help description: "A boilerplate generator"
  def run
    puts help
  end
end
