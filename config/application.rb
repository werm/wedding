require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Wedding
  class Application < Rails::Application
    config.assets.paths << Rails.root.join("app","assets","fonts")
    config.assets.paths << Rails.root.join("lib","assets","bower_components","bootstrap-sass-official", "assets", "stylesheets")
    config.assets.paths << Rails.root.join("lib","assets","bower_components","bootstrap-sass-official", "assets","fonts")
    config.assets.precompile += ['*.html','*/*.html']
    config.before_initialize do |app|
      require 'sprockets'
      Sprockets::Engines #force autoloading
    end
  end
end
