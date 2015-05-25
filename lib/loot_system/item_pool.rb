# Collect all items that have a chence to be found
module LootSystem
  class ItemPool
    def initialize
      @items = []
    end

    def add(item_object, options = {})
      @items << Item.new(item_object: item_object, options: options)
    end

    def count
      @items.count
    end

    # List of the drops that will be spawned
    def get_found
      item_selector = ItemSelector.new(@items)
      item_selector.select
    end
  end
end
