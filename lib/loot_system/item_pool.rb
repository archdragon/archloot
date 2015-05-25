# Collect all items that have a chence to be found
module LootSystem
  class ItemPool
    def initialize
      @items = []
    end

    def add(*item_data)
      @items << Item.new(item_data)
    end

    def count
      @items.count
    end

    # List of the drops that will be spawned
    def get_found
    end
  end
end
