require "thor"

module GeneratorBase
  
  module Template
    
    def templater(file)
      template("../templates/#{file}.tt", "#{file_name}/#{file}")
    end
    
    def make_dir(dir)
      directory("../templates/#{dir}", "#{file_name}/#{dir}")
    end
  end
end
