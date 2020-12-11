require './models.rb'

class Starship::DeleteStarship
    #Attrib
    attr_accessor :name, :ship_class, :registry, :captain, :starship

    #=== METHODS ===
    def initialize(registry: nil) #inits an istance of OPERATION to delete
        @registry = registry
    end

    def perform
        @starship = Starship.where(registry: @registry)

        if !@starship.nil?
            @starship.destroy! #BOOM!
        end
    end

end