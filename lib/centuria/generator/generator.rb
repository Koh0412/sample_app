require "generator/gene_base"

class Generator < Thor::Group
  include Thor::Actions
  include GeneratorBase::Template
  
  argument :file_name
  
  def self.source_root
    File.dirname(__FILE__)
  end
  
  def create_lib_file
    templater "lib/app.txt"
  end
  
  def create_version
    templater "lib/version.rb"
  end
  
  def create_readme
    create_file "#{file_name}/README.md"
  end
end