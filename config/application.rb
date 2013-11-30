require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)
 
CONFIG = YAML.load(File.read(File.expand_path('../application.yml', __FILE__)))
CONFIG.merge! CONFIG.fetch(Rails.env, {})
CONFIG.symbolize_keys!

module LocalGrowth
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

   
    # Mailer settings
    config.action_mailer.default_url_options = {host: CONFIG[:action_mailer_host]}
    config.action_mailer.smtp_settings = {
      :address              => CONFIG[:action_mailer_address],
      :port                 => CONFIG[:action_mailer_port],
      :domain               => CONFIG[:action_mailer_domain],
      :user_name            => CONFIG[:action_mailer_username],
      :password             => CONFIG[:action_mailer_password],
      :authentication       => :plain,
      :enable_starttls_auto => true
    }


    
  end
end
