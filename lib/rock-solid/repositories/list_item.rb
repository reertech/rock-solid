module RockSolid
  module Repositories
    class ListItem < RockSolid::Repositories::Base
      def find_by_list_name(list_name)
        (1..Float::INFINITY).lazy.
            map { |page|
                request = RockSolid::Requests::ListItems.new(list_name, page)
                response = gateway.get_list_items(request.to_h)
                build_list_items(response)
            }.take_while(&:any?).
                to_a.
                flatten(1)
      end

      private

      def build_list_items(response)
        if error(response).blank?
          RockSolid::Mappers::ListItems.new(present_xml(response)).to_domain
        else
          raise Exception.new(error(response)['ErrorText'])
        end
      end

      def error(response)
        if response.try(:body).present?
          Hash.from_xml(response.body).dig('LiquidateDirect', 'Error')
        end
      end
    end
  end
end
