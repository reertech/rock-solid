module RockSolid
  module Domain
    class List
      include Virtus.model

      attribute :list_id, String
      attribute :list_name, String
    end
  end
end
