module RockSolid
  class Configuration
    attr_accessor :app_key, :secret_key
  end

  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
