module LootSystem
  class Item
    def initialize(item_data, options: {})
      @item_data = item_data
      # Options can be quite complex, so a separate class will handle them
      @options = ItemOptions.new(options)
    end
  end
end
