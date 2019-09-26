require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Simplechat
  class Application < Rails::Application
    p 'in side the module of application.rb....'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # config.time_zone = "Eastern Time (US & Canada)"
    # config.active_record.default_timezone = :utc or :local

    # Setting time zone
    config.time_zone = "Beijing"

    # Avoid data-disable-with after button submit
    config.action_view.automatically_disable_submit_tag = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
