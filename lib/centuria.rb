$LOAD_PATH << File.expand_path("./centuria", __dir__)

require "centuria/version"
require "generator/commands"
require "generator/gene_base"

module Centuria
  class Error < StandardError; end
    
    def self.greet(word)
      "Hi!, #{word}"
    end
    
    def self.add(a, b)
      "#{a + b}"
    end
    
    def self.logging
      "[LOG]: this is logs"
    end
end
