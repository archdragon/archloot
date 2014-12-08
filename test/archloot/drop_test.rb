require 'test_helper'

module Archloot
  describe Drop do
    before do
      @drop = Drop.new("Legendary ring of spec")
    end

    it "has an item" do
      @drop.item.wont_be_nil
    end

    it "has a chance to be dropped" do
      @drop.chance.must_be :<=, 1
      @drop.chance.must_be :>=, 0
    end

    describe "when no drop chance is assigned" do
      before do
        @drop_with_defaults = Drop.new("Magical potion of testing")
      end
      it "has maximum drop chance" do
        @drop_with_defaults.chance.must_be :==, 1
      end
    end

    describe "when no name is assigned" do
      before do
        @unnamed_drop = Drop.new("Magical potion of testing")
      end
      it "has a default name" do
        @unnamed_drop.name.must_equal "Unnamed"
      end
    end

  end
end