require "generator/gene_base"

class Clear < Thor::Group
  include Thor::Actions
  include GeneratorBase::Template
  
  argument :name
  
  def remove_all
    puts "are you sure remove it?(Y or N)"
    clear = STDIN.gets.chomp
    if clear == "Y" || clear == "y"
      if Dir.exist?("#{name}") || File.exist?("#{name}")
        remove_file name
        puts "finish remove to your request! name: #{name}"
      else
        puts "your request file: #{name} is not exist."
      end
    else
      puts "back home without delete it."
    end
  end
end