require 'rails'
require 'rails/railtie'


module MixableEngines
  class Railtie < ::Rails::Railtie
    config.mixable_engines = ActiveSupport::OrderedOptions.new
    config.mixable_engines.paths = []

    initializer "mixable_engines.set_configs" do
      MixableEngines.paths = config.mixable_engines.paths || []
    end
  end
end

