require './models.rb'
require 'json'

class Starship::UpdateStarship

    #Attrib
    attr_accessor :name, :ship_class, :registry, :captain, :starship #defines get and set for each attrib. 
    #allows code outside operation to get these attributes
    #See also attr_reader and attr_writer

    #=== METHODS ===
    def initialize( name: nil, ship_class: nil, registry: nil, captain: nil)
        @name = name
        @ship_class = ship_class
        @registry = registry
        @captain = captain
    end

    def perform #performs relevant CRUD action
        @starship = Starship.where( registry: @registry)
        unless @starship.nil?
            @starship.name = name
            @starship.ship_class = ship_class
            @starship.registry = registry
            @starship.captain = captain
        end
        @starship.save!
        @starship
    end
end