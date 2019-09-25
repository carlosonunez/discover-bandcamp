require 'logging'
require 'singleton'

module DiscoverBandcamp
  module Logging
    include Singleton

    def initialize
      self.logger = Logging.logger(STDOUT)
    end
  end
end
