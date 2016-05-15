require 'spec_helper'

describe Dwelling do
  let(:digs) {Dwelling.new("21 Jump Street", "Los Angeles", "CA", "12345")}
  describe ".new" do
    it "assigns an address" do
      expect(digs.address).to eq("21 Jump Street")
    end

    it "should give a city or town" do
      expect(digs.city_or_town).to eq("Los Angeles")
    end

    it "should give a state" do
      expect(digs.state).to eq("CA")
    end

    it "should give a zip code" do
      expect(digs.zip_code).to eq("12345")
    end
  end
end
