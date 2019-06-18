module RockSolid
  module Requests
    class Lists < RockSolid::Requests::Auth
      def initialize
        @options = { 'includeWarehouses' => true }
      end
    end
  end
end
