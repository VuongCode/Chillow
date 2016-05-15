require 'spec_helper'

describe House do
  let(:digs) { House.new("21 Jump Street", "Los Angeles", "CA", "12345", "$510,000") }

  describe ".new" do
    it "is a house" do
      expect(digs).to be_a(House)
    end

    it "should show an asking price" do
      expect(digs.asking_price).to eq("$510,000")
    end
  end
end
