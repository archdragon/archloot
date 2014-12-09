require 'spec_helper'

module Archloot
  describe Drop do
    describe "#successful?" do
      context "with max. drop chance" do
        let(:drop) { FactoryGirl.create :drop }
        it "is successful" do
          expect(drop.successful?).to eq(true)
        end
      end

      context "with min. drop chance" do
        it "is not successful" do
        end
      end
    end

    it '#randomize_using' do
      pending # no code yet
    end
  end
end