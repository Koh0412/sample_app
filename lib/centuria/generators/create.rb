require "generators/gene_base"

class Create < Thor::Group
  include Thor::Actions
  include GeneratorBase::Template
  
  argument :file_name
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  def create_template
    
    if !use_symbol?(file_name)
      
      files = %w(lib/app.rb Gemfile)
      files.each do |file|
        template "templates/#{file}", "#{file_name}/#{file}"
      end
      
      template "templates/ruby-version.tt", "#{file_name}/.ruby-version"
      create_file "#{file_name}/README.md"
      
      comment(file_name)
    else
      puts "your app name is include symbol cannot use this.\nplease one more."
    end
    
  end
  
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