# require "generator/clear"
# require "generator/create"

gene_scripts = %w(clear tinker)
gene_scripts.each do |script|
  require "commands/#{script}"
end

require "generators/create"

module GeneratorCmd
end