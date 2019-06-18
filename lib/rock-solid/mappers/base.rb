module RockSolid
  module Mappers
    class Base
      def initialize(response_object)
        @response_object = response_object
      end

      def to_domain
        rescue 'Not implemented'
      end

      private

      def dasherized_attributes(mapping_object)
        camel_attribute_keys.map { |c| return {} unless mapping_object.include?(c) }

        camel_attribute_keys.
            map { |e| [ e, e.underscore ] }.
            to_h.
            merge(custom_attributes).
            map { |src_key, dest_key| [ dest_key, mapping_object[src_key] ] }.
            to_h
      end

      def camel_attribute_keys
        []
      end

      def custom_attributes
        {}
      end
    end
  end
end
