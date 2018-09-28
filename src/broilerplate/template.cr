require "kilt"
require "kilt/crustache"
require "yaml"

# The template class
class Broilerplate::Template
    # The default configuration name
    CONFIG_NAME = ".broil.yml"

    # Exception to be raised when the template specified does not exist
    class NotFound < Exception
    end
    # Exceptoin to be raised when the configuration is invalid or not found
    class ImproperlyConfigured < Exception
    end 

    # The configuration YAML parser
    class ConfigParser

    end

    property path : String

    def initialize(@path)
        exists?
        configured?
    end

    def exists?
        raise NotFound.new("Template directory not found") if !Dir.exists? @path
    end

    def configured?
        config_path = File.join(@path, CONFIG_NAME)
        config_file = File.read config_path
        
        puts config_file 
    end
end