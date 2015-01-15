require 'spec_helper'

module Archloot
  describe Chest do
    describe "#add" do
      let(:chest) { FactoryGirl.build :chest }
      let(:drop) { FactoryGirl.build :drop }
      it "adds a new potential drop" do 
        chest.add(drop)
        expect(chest.potential_droplist.length).to eq(1)
      end
    end

    describe "#final_droplist" do
      let(:chest_lucky) { FactoryGirl.build :chest }
      it "is a Droplist" do
        expect(chest_lucky.final_droplist).to be_instance_of(Droplist)
      end
      context "drops were successful" do
        let(:drop_lucky) { FactoryGirl.build :drop_lucky }
        before { allow(drop_lucky).to receive(:successful?).and_return(true) }
        it "contains every successful drop" do
          chest_lucky.add(drop_lucky)
          expect(chest_lucky.final_droplist.length).to eq(1)
        end
      end
    end
  end
end