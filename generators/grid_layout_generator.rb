require 'generator_extensions'
class GridLayoutGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.add_to_file "config/environment.rb", "Rails::Initializer.run do |config|", "  config.gem 'formtastic'"
      m.mirror
    end
  end
end
