require_relative './boot'

require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'

Bundler.require(*Rails.groups)

module RegisterYourInterest
  class Application < Rails::Application
  end
end
