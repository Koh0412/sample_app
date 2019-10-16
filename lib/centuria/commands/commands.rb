module Centuria
  module GeneratorCmd
    gene_scripts = %w(clear tinker)
    gene_scripts.each do |script|
      require "commands/#{script}"
    end
    
    require "generators/create"
  end
end
