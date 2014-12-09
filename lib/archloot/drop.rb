module Archloot
  class Drop
    attr_accessor :item
    attr_accessor :chance

    def initialize(item)
      @item = item
      @chance = 1
      randomize_using { Random.rand(1.0) }
    end

    def successful?
      rand < @chance
    end

    def randomize_using(&block)
      @randomize_proc = block
    end

    private

    def rand
      @randomize_proc.call
    end
  end
end