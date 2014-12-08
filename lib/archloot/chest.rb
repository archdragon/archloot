module Archloot
  class Chest
    attr_accessor :drops_limit
    attr_reader :drops

    def initialize
      @drops = []
      @drops_limit = 1
    end

    def add(item)
      @drops << item
    end

    def droplist
      @droplist ||= generate_droplist
    end

    private

    def generate_droplist
      drops_count = 0
      item_list = []

      @droplist = Droplist.new

      @drops.each do |drop|
        if drop.successful?
          @droplist.add(drop)
          break if @droplist.length > @drops_limit
        end
      end

      @droplist
    end

  end
end