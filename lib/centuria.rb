require "centuria/version"

module Centuria
  class Error < StandardError; end
    
    def self.greet(word)
      "Hi!, #{word}"
    end
    
    def self.add(a, b)
      "#{a + b}"
    end
    
    def self.logging
      "[LOG]: this is log"
    end
end
