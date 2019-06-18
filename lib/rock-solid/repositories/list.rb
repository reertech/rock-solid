module RockSolid
  module Repositories
    class List < RockSolid::Repositories::Base
      def find_all
        request = RockSolid::Requests::Lists.new
        response = gateway.get_all_lists(request.to_h)

        build_list_array(response)
      end

      private

      def build_list_array(response)
        RockSolid::Mappers::Lists.new(present_xml(response)).to_domain
      end
    end
  end
end
