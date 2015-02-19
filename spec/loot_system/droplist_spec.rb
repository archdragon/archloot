require 'spec_helper'

module LootSystem
  describe Droplist do
    describe "#length" do
      let(:droplist) { FactoryGirl.build :droplist }

      it "is an integer" do
        expect(droplist.length).to be_kind_of(Integer)
      end

      context "without any drops" do
        it "returns 0" do
          expect(droplist.length).to eq(0)
        end
      end

      context "with drops" do
        let(:drop) { FactoryGirl.build :drop }
        let(:another_drop) { FactoryGirl.build :drop }

        it "returns number of drops" do
          droplist.add(drop)
          expect(droplist.length).to eq(1)
          droplist.add(another_drop)
          expect(droplist.length).to eq(2)
        end
      end
    end

    describe "#add" do
      let(:droplist) { FactoryGirl.build :droplist }
      let(:drop) { FactoryGirl.build :drop }

      it "adds one drop" do
        droplist.add(drop)
        expect(droplist.drops.length).to eq(1)
      end
    end

    describe "#sample" do
      let(:droplist) { FactoryGirl.build :droplist }
      let(:drop) { FactoryGirl.build :drop }
      let(:sample_count) { 2 }
      context "when the count is > 1" do
        it "returns a set number of drops" do
          droplist.add(drop)
          droplist.add(drop)
          expect(droplist.sample(sample_count).length).to eq sample_count
        end
      end
      context "without a parameter" do
        it "returns a drop object" do
          droplist.add(drop)
          expect(droplist.sample).to be_kind_of(Drop)
        end
      end
    end

  end
end
