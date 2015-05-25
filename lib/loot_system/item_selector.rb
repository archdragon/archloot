# Takes a list of items and finds all that match the criteria
module LootSystem
  class ItemSelector
    def initialize(items)
      @items = items
    end

    def select
      found_items = @items.inject([]) do |acc, item|
        check_item(acc, item)
      end
    end

    private

    def check_item(acc, item)
      options = item.options
      # Options were used during item spawning
      # and we don't need them anymore
      item_object = item.without_options
      count = rand(options.min..options.max)
      if roll_successfull(options)
        acc << { item: item_object, count: count }
      end
      acc
    end

    def roll_successfull(options)
      rand < options.chance
    end
  end
end
