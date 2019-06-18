module RockSolid
  module Requests
    class ListItems < RockSolid::Requests::Auth
      PAGE_SIZE = 1000

      def initialize(list_name, page)
        @options = {
            'listName' => list_name,
            'liidSKU' => '',
            'customSKU' => '',
            'page' => page,
            'recordsCount' => PAGE_SIZE,
            'fromDateTime' => '',
            'requestedColumnsSet' => 'mystore'
        }
      end
    end
  end
end
