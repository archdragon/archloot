module Archloot
  class Droplist
    attr_reader :drops
    
    def initialize
      @drops = []
    end

    def add(drop)
      @drops << drop
    end

    def length
      @drops.length
    end
  end
end