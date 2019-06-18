module RockSolid
  module Requests
    class Product < RockSolid::Requests::Base
      def initialize(product_id)
        @options = {
            'productId' => product_id,
            'includeExtendedImages' => true
        }
      end
    end
  end
end
