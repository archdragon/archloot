require 'spec_helper'

module Archloot
  describe DroplistFilter do
    let(:droplist) { FactoryGirl.build :droplist }
    describe "#limit" do
      let(:drop) { FactoryGirl.build :drop }
      let(:another_drop) { FactoryGirl.build :drop }
      let(:sample_count) { 1 }
      it "returns a limited number of elements" do
        droplist.add(drop)
        droplist.add(another_drop)
        droplist_filter = DroplistFilter.new(droplist)
        expect(droplist_filter.limit(sample_count).length).to eq sample_count
      end
    end
  end
end
