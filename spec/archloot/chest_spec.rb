require 'spec_helper'

module Archloot
  describe Chest do
    let(:chest) { FactoryGirl.build :chest }
    
    describe "#add" do
      let(:drop) { FactoryGirl.build :drop }
      it "adds a new potential drop" do 
        chest.add(drop)
        expect(chest.drops.size).to eq(1)
      end
    end

    describe "#droplist" do
      it "is a Droplist" do
        expect(chest.droplist).to be_instance_of(Droplist)
      end
    end
  end
end