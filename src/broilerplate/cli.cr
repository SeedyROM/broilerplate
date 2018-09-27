require "admiral"

# The command line interface
class Broilerplate::CLI < Admiral::Command
  # Generates a template from the specifed arguments
  class Generate < Admiral::Command
    def run
      Logger.working("Generating...")
      Logger.success("Generated!")
    end
  end

  register_sub_command generate : Generate,
    description: "Generate a template"

  define_help description: "A boilerplate generator"

  # Command line entrypoint
  def run
    puts help
  end
end
