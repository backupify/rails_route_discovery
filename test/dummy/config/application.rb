require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)
require 'rails_route_discovery'

module Dummy
  class Application < Rails::Application
  end
end

