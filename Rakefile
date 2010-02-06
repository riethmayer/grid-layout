require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "grid-layout"
    gem.summary = %Q{A 960 grid layout generator.}
    gem.description = %Q{This generator adds 960.gs to your Rails Application. It does a bit more, please have a look at the README.}
    gem.email = "jan@riethmayer.de"
    gem.homepage = "http://github.com/riethmayer/grid-layout"
    gem.authors = ["Jan Riethmayer"]
    gem.add_development_dependency "generator_extensions", ">= 0.3.2"
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_development_dependency "haml", ">= 2.3.0"
    gem.files = FileList['generators/**/*']
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "grid-layout #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
