module Archloot
  class Drop
    attr_accessor :data
    attr_accessor :chance
    attr_accessor :random_number_generator

    # Assign information about the drop.
    #
    # ==== Examples.
    #   Drop.new({name: "Some item", id: 9, quality: "good"})
    #
    #   Drop.new({name: "Some item", random_number_generator: MyGenerator.new})
    #
    #   @magical_item = Item.new({id: 113})
    #   Drop.new(@magical_item)
    def initialize(data, random_number_generator = Archloot::RandomNumberGenerator.new)
      @data = data
      @random_number_generator = random_number_generator
      @chance = 1
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