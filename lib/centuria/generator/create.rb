require "generator/gene_base"

class Create < Thor::Group
  include Thor::Actions
  include GeneratorBase::Template
  
  argument :file_name
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  def create_template
    file = "#{file_name}"
    
    if !use_symbol?(file)
      templater "lib/app.txt"
      templater "lib/version.rb"
      create_file "#{file}/README.md"
      
      comment(file)
    else
      puts "your app name is include symbol cannot use this.\nplease one more."
    end
    
  end
  
  # def create_version
  # end
  
  # def create_readme
  # end
  
  private
  
  def use_symbol?(file)
    match_str = file.match(/\W/)
    if !match_str.nil?
      match_str[0].is_a?(String)
    else
      false
    end
  end
  
  def comment(file)
    say "[!]warning: please write yourself readme file"
    say "template was successfully! please check your app: #{file}", :green
  end
  
end