module RockSolid
  module Mappers
    class ProductImages < RockSolid::Mappers::Base
      def to_domain
        if errors.blank?
          parsed_product_images.map do |image|
            RockSolid::Domain::ProductImage.new(
              dasherized_attributes(image)
            )
          end
        else
          []
        end
      end

      private

      def errors
        @response_object['LiquidateDirect']['Error']
      end

      def parsed_product_images
        @product_images ||= [@response_object['LiquidateDirect']['GetProductImages']['ProductImages']['Image']].flatten.compact
      end

      def camel_attribute_keys
        %w(IsVisible ImageTime ImageDescription ImageURL)
      end
    end
  end
end
