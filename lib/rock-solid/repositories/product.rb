module RockSolid
  module Repositories
    class Product < RockSolid::Repositories::Base
      def get_details_by_id(product_id)
        request = RockSolid::Requests::Product.new(product_id)
        response = gateway.get_product_details(request.to_h)

        build_product(response)
      end

      private

      def build_product(response)
        RockSolid::Mappers::Product.new(present_xml(response)).to_domain
      end
    end
  end
end
