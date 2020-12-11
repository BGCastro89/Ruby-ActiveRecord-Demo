require './models.rb'

class Starship::CreateStarship

    #Attrib
    attr_accessor :name, :ship_class, :registry, :captain, :starship

    #Methods
    def initialize(name: nil, ship_class: nil, registry: nil, captain: nil)
        @name = name
        @ship_class = ship_class
        @registry = registry
        @captain = captain
    end

    def perform
        @starship = Starship.create!(
            name: @name,
            ship_class: @ship_class,
            registry: @registry,
            captain: @captain
        )
        # @starship.save!
        @starship
    end
end