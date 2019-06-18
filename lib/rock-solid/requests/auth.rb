module RockSolid
  module Requests
    class Auth < RockSolid::Requests::Base
      def to_h
        super

        @options['securityKey'] = RockSolid.configuration.secret_key

        @options
      end
    end
  end
end
