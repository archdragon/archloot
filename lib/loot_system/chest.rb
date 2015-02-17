module LootSystem
  class Chest
    # List of all the drops that have a chance to be spawned in this chest
    attr_reader :potential_droplist

    def initialize
      @potential_droplist = Droplist.new
    end

    # Adds a drop to the potential drops pool.
    def add(params)
      @potential_droplist.add(Drop.new(params))
    end

    # List of the drops that will be spawned.
    def items_found
      @final_droplist ||= generate_final_droplist
    end

    private

    # Get a list of all drops that will be spawned by the chest
    def generate_final_droplist
      @final_droplist = Droplist.new
      @potential_droplist.each { |drop| process_potential_drop(drop) }
      return @final_droplist
    end

    # Check if the potential drop will be given to the player after opening a chest
    def process_potential_drop(drop)
      if drop.successful?
        @final_droplist.add(drop)
      end
    end

  end
end
