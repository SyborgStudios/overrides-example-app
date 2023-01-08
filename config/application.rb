require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OverridesExampleApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    decorators = "#{Rails.root}/app/**/*_monkey_patch*.rb"
    
    Rails.autoloaders.main.ignore(decorators)

    # Load application's model / class decorators
  
    config.to_prepare do
      Dir.glob(Rails.root.join('app/**/*_monkey_patch*.rb')) do |path|
        require_dependency(path)
        Dir.glob(decorators) do |path|
          load (path)
        end
      end
    end
  

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
