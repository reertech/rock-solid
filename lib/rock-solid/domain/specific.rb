module RockSolid
  module Domain
    class Specific
      include Virtus.model

      attribute :name, String
      attribute :value, String
      attribute :container, Integer
    end
  end
end
