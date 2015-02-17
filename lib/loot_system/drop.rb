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
    def initialize(item:, chance: 1, random_number_generator: RandomNumberGenerator.new, hours: (0..23))
      @item = item
      @random_number_generator = random_number_generator
      @chance = chance
    end

    # Returns true if this Drop will be spawned.
    def successful?
      (rand < chance)
    end

    # Performs random number generation
    def rand
      random_number_generator.rand
    end

    private

    def valid_hour?
      t = Time.now
      @hours === t.hour
    end
  end
end
