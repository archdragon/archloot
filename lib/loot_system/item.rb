# Contains an item with the associated options
module LootSystem
  class Item
    # Item object is an object that represents our item
    # It can be anything - from a string to a complex data structure
    attr_reader :item_object, :options

    def initialize(item_object:, options: {})
      @item_object = item_object
      # Options can be quite complex, so a separate class will handle them
      @options = ItemOptions.new(options)
    end

    # Returns just the item object
    def without_options
      @item_object
    end
  end
end
