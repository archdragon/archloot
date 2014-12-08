require 'test_helper'

module Archloot
  describe Droplist do
    before do
      @droplist = Droplist.new
    end

    it "has drops" do
      @droplist.drops.must_be_kind_of Array
    end
  end
end