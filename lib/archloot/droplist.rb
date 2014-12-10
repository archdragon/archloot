module Archloot
  class Droplist
    include Enumerable
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

    def each(&block)
      @drops.each do |drop|
        block.call(drop)
      end
    end
  end
end