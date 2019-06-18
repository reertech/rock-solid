module RockSolid
  module Requests
    class ProductImages < RockSolid::Requests::Auth
      def initialize(product_sku)
        @options = {
            'productSKU' => product_sku,
            'visibleImagesOnly' => false
        }
      end
    end
  end
end
