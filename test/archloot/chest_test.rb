require 'test_helper'

module Archloot
  describe Chest do

    before do
      @chest = Chest.new
    end

    it "has drops" do
      @chest.drops.must_be_kind_of Array
    end

    it "has a limit of drops" do
      @chest.drops_limit.must_be :>, 0
      @chest.drops_limit.must_be_kind_of Integer
    end

    describe "#add" do
      before do
        drop = Drop.new("Magical potion of testing")
        @chest.add(drop)
      end
      it "adds a new potential drop" do
        @chest.drops.wont_be_empty
      end
    end

    describe "#generate" do
      describe "if there is no droplist" do
        before do          
          @empty_chest = Chest.new
          @empty_chest.droplist
        end
        it "generates a droplist" do
          @empty_chest.droplist.must_be_instance_of Droplist
        end
      end

      describe "for every successful drop" do
        before do
          @lucky_drop = Drop.new("Gold ring of regeneration")
          @lucky_drop.randomize_using { 0 }

          @lucky_chest = Chest.new
          @lucky_chest.add(@lucky_drop)
          @lucky_chest.droplist
        end
        it "generates an item" do
          @lucky_chest.droplist.length.must_be :==, 1
        end
      end

      describe "for unsuccessful drops" do
        before do
          @unlucky_drop = Drop.new("Gold ring of regeneration")
          @unlucky_drop.randomize_using { 1 }

          @unlucky_chest = Chest.new
          @unlucky_chest.add(@unlucky_drop)
          @unlucky_chest.droplist
        end
        it "doesn't generate an item" do
          @unlucky_chest.droplist.length.must_be :==, 0
        end
      end
    end # describe #generate

  end
end