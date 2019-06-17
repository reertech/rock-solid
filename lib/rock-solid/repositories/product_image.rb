module RockSolid
  module Repositories
    class ProductImage < RockSolid::Repositories::Base
      def get_all_by_sku(product_sku)
        request = RockSolid::Requests::ProductImages.new(product_sku)
        response = gateway.get_product_images(request.to_h)

        build_product_images(response)
      end

      private

      def build_product_images(response)
        RockSolid::Mappers::ProductImages.new(present_xml(response)).to_domain
      end
    end
  end
end
