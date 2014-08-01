require 'railtie'
require 'active_support/dependencies'


module MixableEngines
  class << self
    attr_accessor :paths
  end
end


module ActiveSupport::Dependencies
  alias_method :require_or_load_without_multiple, :require_or_load
  def require_or_load(file_name, const_path = nil)
    if file_name.starts_with?(Rails.root.to_s + '/app')
      relative_name = file_name.gsub(Rails.root.to_s, '')
      @engine_paths ||= MixableEngines.paths
      @engine_paths.each do |path|
        engine_file = File.join(path, relative_name) + '.rb'
        require_or_load_without_multiple(engine_file, const_path) if File.file?(engine_file)
      end
    end

    require_or_load_without_multiple(file_name, const_path)
  end
  
end