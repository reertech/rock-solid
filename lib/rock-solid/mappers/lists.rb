module RockSolid
  module Mappers
    class Lists < RockSolid::Mappers::Base
      def to_domain
        @response_object['LiquidateDirect']['GetAllCompanyLists']['Lists']['List'].map do |list|
          RockSolid::Domain::List.new({
              list_name: list['ListName'],
              list_id: list['ListID']
          })
        end
      end
    end
  end
end
