module RockSolid
  module Domain
    class ListItem
      include Virtus.model

      attribute :liid, String
      attribute :qty, Integer
      attribute :name, String
      attribute :storage, String
      attribute :product_condition, String
      attribute :liid_sku, String
      attribute :cost, String
      attribute :marketplace_id, String
      attribute :list_name, String
      attribute :last_apply_template_name, String
      attribute :last_apply_template_date, String
      attribute :serial_number_tracking_type, String
      attribute :warehouse_name, String
      attribute :product_data, Hash
      attribute :my_store, Hash

      def price
        if my_store['SalePriceExpression'] == 'cost'
          cost.to_d
        else
          my_store['SalePriceExpression'].to_d
        end
      end
    end
  end
end
