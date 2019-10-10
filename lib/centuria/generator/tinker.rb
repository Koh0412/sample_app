require "irb"

class Tinker < Thor::Group
  include Thor::Actions
  
  def tinker
    puts "Centuria #{Centuria.version}"
    IRB.start(ARGV.shift)
  end
end