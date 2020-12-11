require './models.rb'

class Starship::GetStarship

    #Attrib
    attr_accessor :name, :ship_class, :registry, :captain, :starship

    #Methods
    def initialize( name: nil, ship_class: nil, registry: nil, captain: nil) #can get by any one, or multiple
        @name = name
        @registry = registry
        @ship_class = ship_class
        @captain = captain
    end

    def perform
        @starship = Starship.where(registry: @registry)
        @starship
    end
end