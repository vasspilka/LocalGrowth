# Be sure to restart your server when you modify this file.

LocalGrowth::Application.config.session_store :cookie_store, key: "_#{CONFIG[:app_name]}_session"
