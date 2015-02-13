module LootSystem
  class Drop
    attr_accessor :item
    attr_accessor :chance
    attr_accessor :random_number_generator

    # Assign information about the drop.
    #
    # ==== Examples.
    #   Drop.new({item: YourItemObject.new, chance: 0.5})
    #
    #   Drop.new({item: YourItemObject.new, random_number_generator: MyGenerator.new})
    #
    #   @magical_item = Item.new({id: 113})
    #   Drop.new({item: @magical_item})
    def initialize(item: nil, chance: 1, random_number_generator: Archloot::RandomNumberGenerator.new)
      raise ArgumentError, "You have to pass an item object" if item.nil?

      @item = item
      @random_number_generator = random_number_generator
      @chance = chance
      randomize_using { Random.rand(1.0) }
    end

    # Returns true if this Drop will be spawned.
    def successful?
      (rand < chance)
    end

    # Allows to define custom block that will be used for random number generation.
    def randomize_using(&block)
      @randomize_proc = block
    end

    # Performs random number generation
    def rand
      random_number_generator.rand
    end
  end
end
