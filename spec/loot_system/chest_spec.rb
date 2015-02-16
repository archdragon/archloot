require 'spec_helper'

module LootSystem
  describe Chest do
    describe "#add" do
      let(:chest) { FactoryGirl.build :chest }
      it "adds a new potential drop" do 
        chest.add({item: "Test item", chance: 0.99})
        expect(chest.potential_droplist.length).to eq(1)
      end
    end

    describe "#get_drops" do
      let(:chest_lucky) { FactoryGirl.build :chest }
      it "is a Droplist" do
        expect(chest_lucky.items_found).to be_instance_of(Droplist)
      end
      context "drops were successful" do
        let(:drop_lucky) { FactoryGirl.build :drop_lucky }
        before { allow(drop_lucky).to receive(:successful?).and_return(true) }
        it "contains every successful drop" do
          chest_lucky.add({item: drop_lucky.item, chance: drop_lucky.chance} )
          expect(chest_lucky.items_found.length).to eq(1)
        end
      end
    end
  end
end
