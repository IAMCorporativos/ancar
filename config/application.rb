require File.expand_path('../boot', __FILE__)
require 'csv'

require 'rails/all'
require 'wicked_pdf'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ancar
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = 'Madrid'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :en

    # Set the adapter of Active Job
    config.active_job.queue_adapter = :sidekiq

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    # Add lib to the autoload path
    config.autoload_paths << Rails.root.join('lib')


    # Add the new directories to the locales load path
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.assets.paths << Rails.root.join("app", "assets", "fonts")

    config.generators do |g|
      g.test_framework :rspec,
      fixtures: true,
      view_specs: false,
      helper_specs: false,
      routing_specs: false,
      controller_specs: true,
      request_specs: false
      g.fixture_replacement :factory_bot, dir: "spec/factories"
      g.stylesheets false
      g.javascripts false
    end

    config.middleware.use "WickedPdf::Middleware", :print_media_type => true

    config.exceptions_app = self.routes

  end

end
