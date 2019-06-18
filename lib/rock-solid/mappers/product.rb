module RockSolid
  module Mappers
    class Product < RockSolid::Mappers::Base
      def to_domain
        if errors.blank?
          RockSolid::Domain::Product.new(
            dasherized_attributes(parsed_product).merge(coerced_attributes)
          )
        end
      end

      private

      def errors
        @response_object['LiquidateDirect']['Error']
      end

      def coerced_attributes
        { specifics: specifics }
      end

      def parsed_product
        @product ||= @response_object['LiquidateDirect']['Product']
      end

      def camel_attribute_keys
        %w(OfferID ExchangeID ProductName Title SKU Condition Quantity SalePrice
           ShipInternational SimpleDescription Featured ReleaseDate Manufacture
           Origin ManufactureModelNumber Commision CommisionIsPercent ShipClassID
           ShipClassUnits ProductCustomSKU UPC ASIN MSRP Weight ShipWithinText
           AvailableByDate AvailableWithinDays ShowAsGift FreeShipping PickupAvailable
           MainImage GalleryImage EndDate ExtendedImages SKU ProductCustomSKU UPC ASIN MSRP)
      end

      def specifics
        RockSolid::Mappers::Specifics.new(parsed_product['Specifics']).to_domain
      end
    end
  end
end
