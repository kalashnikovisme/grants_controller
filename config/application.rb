require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module GrantsController
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib)
    config.i18n.default_locale = :ru
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.initialize_on_precompile = false
    config.assets.version = '1.0'
    config.generators do |g|
      g.fixture_replacement :factory_girl
    end
  end
end
