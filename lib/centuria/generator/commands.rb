# require "generator/clear"
# require "generator/create"

gene_scripts = %w(clear create tinker)
gene_scripts.each do |script|
  require "generator/#{script}"
end

module GeneratorCmd
end