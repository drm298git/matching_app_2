require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MatchingApp2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    # Configuration for the application, engines, and railties goes here.
    config.generators do |g|#Generateの設定
      g.skip_routes  false# routes.rbにルーティングを追加しない、falseで追加する(falseがデフォルト)
      g.stylesheets  false# stylesheets以下にファイルを作成しない
      g.javascripts  false# javascripts以下にファイルを作成しない

      g.helper          false          # helper以下にファイルを作成しない
      g.test_framework  false          # test以下にファイル作成しない
    end
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = 'Tokyo'
    config.i18n.default_locale = :ja
    # config.eager_load_paths << Rails.root.join("extras")

  end
end
