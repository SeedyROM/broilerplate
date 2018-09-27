require "admiral"

class Broilerplate::CLI < Admiral::Command
  class Generate < Admiral::Command
    def run
      Logger.working("Generating...")
      Logger.success("Generated!")
    end
  end

  register_sub_command generate : Generate,
    description: "Generate a template"

  define_help description: "A boilerplate generator"
  def run
    puts help
  end
end
