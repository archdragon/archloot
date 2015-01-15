require 'spec_helper'

module Archloot
  describe RandomNumberGenerator do
    describe "#rand" do
      subject { Archloot::RandomNumberGenerator.new.rand }
      it { should be_between(0.0, 1.0).inclusive }
      it { should be_kind_of(Float) }
      it "should be between 0 and 1" do
        should be_between(0.0, 1.0).inclusive
      end
    end
  end
end