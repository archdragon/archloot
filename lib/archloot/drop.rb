module Archloot
  class Drop
    attr_accessor :data
    attr_accessor :chance

    # Assign information about the drop.
    #
    # ==== Examples.
    #   Drop.new({name: "Some item", id: 9, qulity: "good"})
    #   Drop.new("Magical Ring"))
    #
    #   @magical_item = Item.new({id: 113})
    #   Drop.new(@magical_item)
    def initialize(data)
      @data = data
      @chance = 1
      randomize_using { Random.rand(1.0) }
    end

    # Returns true if this Drop will be spawned.
    def successful?
      @successful ||= (rand < @chance)
    end

    # Allows to define custom block that will be used for random number generation.
    def randomize_using(&block)
      @randomize_proc = block
    end

    # Performs random number generation
    def rand
      @randomize_proc.call
    end
  end
end