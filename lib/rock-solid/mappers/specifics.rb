module RockSolid
  module Mappers
    class Specifics < RockSolid::Mappers::Base
      def to_domain
        @response_object['Specific'].map do |specific|
          RockSolid::Domain::Specific.new(dasherized_attributes(specific))
        end
      end

      private

      def camel_attribute_keys
        %w(Name Value Container)
      end
    end
  end
end
