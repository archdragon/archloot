module LootSystem
  class ItemOptions
    attr_reader :chance, :min, :max

    def initialize(
      chance: 0.5,
      min: 1,
      max: 1
    )
      @chance = chance
      @min = min
      @max = max

      check_for_errors
    end

    private

    def check_for_errors
      error = case
        when min > max
          'Maximal number of items must be greater or equal than the minimal number'
        when min < 0
          'Minimal number of items can be less than 0'
        when chance < 0 || chance > 1
          'Minimal number of items must be between 0 and 1'
        else
          false
        end

      fail ArgumentError, error if error
    end
  end
end
