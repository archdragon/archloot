require 'spec_helper'

module LootSystem
  describe Chest do
    describe "#add_drop" do
      let(:chest) { FactoryGirl.build :chest }
      it "adds a new potential drop" do 
        chest.add_drop({item: "Test item", chance: 0.99})
        expect(chest.potential_droplist.length).to eq(1)
      end
    end

    describe "#get_drops" do
      let(:chest_lucky) { FactoryGirl.build :chest }
      it "is a Droplist" do
        expect(chest_lucky.get_drops).to be_instance_of(Droplist)
      end
      context "drops were successful" do
        let(:drop_lucky) { FactoryGirl.build :drop_lucky }
        before { allow(drop_lucky).to receive(:successful?).and_return(true) }
        it "contains every successful drop" do
          chest_lucky.add_drop({item: drop_lucky.item, chance: drop_lucky.chance} )
          expect(chest_lucky.get_drops.length).to eq(1)
        end
      end
    end
  end
end
