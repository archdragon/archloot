module LootSystem
  class Chest
    attr_accessor :drops_limit
    attr_reader :potential_droplist

    def initialize
      @drops_limit = 1
      @potential_droplist = Droplist.new
    end

    # Adds a drop to the potential drops pool.
    def add(drop)
      @potential_droplist.add(drop)
    end

    # List of the drops that will be spawned.
    def get_drops
      @final_droplist ||= generate_final_droplist
    end

    private

    # Get a list of all drops that will be spawned by the chest
    def generate_final_droplist
      drops_count = 0

      @final_droplist = Droplist.new

      @potential_droplist.each { |drop| process_potential_drop(drop) }

      @final_droplist
    end

    # Check if the potential drop will be given to the player after opening a chest
    def process_potential_drop(drop)
      if drop.successful? && @final_droplist.length < @drops_limit
        @final_droplist.add(drop)
      end
    end

  end
end
