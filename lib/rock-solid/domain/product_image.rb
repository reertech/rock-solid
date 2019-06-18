module RockSolid
  module Domain
    class ProductImage
      include Virtus.model

      attribute :is_visible, String
      attribute :image_time, String
      attribute :image_description, String
      attribute :image_url, String
    end
  end
end
