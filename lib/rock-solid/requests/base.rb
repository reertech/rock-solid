module RockSolid
  module Requests
    class Base
      def initialize
        @options = {}
      end

      def to_h
        @options['appKey'] = RockSolid.configuration.app_key
        @options['xslUri'] = ''

        @options
      end
    end
  end
end
