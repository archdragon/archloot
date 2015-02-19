module LootSystem
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

    def sample(limit=1)
      return @drops.sample if limit == 1
      @drops.sample(limit)
    end
  end
end
