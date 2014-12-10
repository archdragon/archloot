module Archloot
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
    def final_droplist
      @final_droplist ||= generate_final_droplist
    end

    private

    def generate_final_droplist
      drops_count = 0

      @final_droplist = Droplist.new

      @potential_droplist.each do |drop|
        if drop.successful?
          @final_droplist.add(drop)
        end
        break if @final_droplist.length > @drops_limit
      end

      @final_droplist
    end

  end
end