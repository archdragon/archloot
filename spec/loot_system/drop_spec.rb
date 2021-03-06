require 'spec_helper'

module LootSystem
  describe Drop do
    let(:basic_drop) { FactoryGirl.build :drop }
    it "carries information about the item" do
      expect(basic_drop.item).not_to be_nil
    end

    describe "#successful?" do
      context "with max. drop chance" do
        let(:drop) { FactoryGirl.build :drop_lucky }

        it "is successful" do
          expect(drop.successful?).to eq(true)
        end
      end

      context "with min. drop chance" do
        let(:drop) { FactoryGirl.build :drop_unlucky }

        it "is not successful" do
          expect(drop.successful?).to eq(false)
        end
      end
    end

    describe "#rand" do
      let(:drop) { FactoryGirl.build :drop }

      it "returns a float" do
        expect(drop.rand).to be_kind_of(Float)
      end

      it "is between 0.0 and 1.0" do
        expect(drop.rand).to be_between(0.0, 1.0).inclusive
      end
    end
  end
end
