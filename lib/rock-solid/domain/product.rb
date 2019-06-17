module RockSolid
  module Domain
    class Product
      SPECIFICS_MAP = {
          category_ids: 'magento categories',
          description: 'magento short description'
      }

      include Virtus.model

      attribute :offer_id, String
      attribute :exchange_id, String
      attribute :product_name, String
      attribute :title, String
      attribute :sku, Array
      attribute :condition, String
      attribute :quantity, String
      attribute :sale_price, String
      attribute :ship_international, String
      attribute :simple_description, String
      attribute :featured, String
      attribute :release_date, String
      attribute :manufacture, String
      attribute :origin, String
      attribute :manufacture_model_number, String
      attribute :commision, String
      attribute :commision_is_percent, String
      attribute :ship_class_id, String
      attribute :ship_class_units, String
      attribute :product_custom_sku, String
      attribute :upc, String
      attribute :asin, String
      attribute :msrp, String
      attribute :weight, String
      attribute :ship_within_text, String
      attribute :available_by_date, String
      attribute :available_within_days, String
      attribute :show_as_gift, String
      attribute :free_shipping, String
      attribute :pickup_available, String
      attribute :main_image, String
      attribute :gallery_image, String
      attribute :end_date, String
      attribute :specifics, Array[RockSolid::Domain::Specific]
      attribute :extended_images, String

      def magento_category_ids
        specific_value_of(SPECIFICS_MAP[:category_ids]).to_s.split(',').map(&:to_i)
      end

      def magento_short_description
        specific_value_of(SPECIFICS_MAP[:description]).to_s
      end

      def price
        sale_price.to_f
      end

      def has_offer?
        offer_id != '-1'
      end

      private

      def specific_value_of(name)
        specifics.find { |s| s.name == name }.try(:value)
      end
    end
  end
end
