module RockSolid
  module Mappers
    class ListItems < RockSolid::Mappers::Base
      def to_domain
        list_items.map do |list_item|
          RockSolid::Domain::ListItem.new(dasherized_attributes(list_item))
        end
      end

      private

      def list_items
        if empty_list?
          []
        else
          parse_list_items
        end
      end

      def empty_list?
        parse_list_items.to_s.strip.blank?
      end

      def parse_list_items
        @parsed_list_items ||= @response_object['LiquidateDirect']['GetListItemsByListName']['ListItems']['Item']
      end

      def camel_attribute_keys
        %w(liid Qty Name Storage ProductCondition Cost MarketplaceID
           ListName LastApplyTemplateName LastApplyTemplateDate
           SerialNumberTrackingType WarehouseName ProductData MyStore)
      end

      def custom_attributes
        { 'LIIDSKU' => 'liid_sku' }
      end
    end
  end
end
