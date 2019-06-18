module RockSolid
  module Repositories
    class Base
      private

      def gateway
        RockSolid::Gateway.new
      end

      def present_xml(response)
        Hash.from_xml(response)
      end
    end
  end
end
