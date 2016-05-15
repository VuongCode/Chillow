require 'spec_helper'

describe Apartment do
  let(:myspace) {Apartment.new("123 1st Street", "Trenton", "NJ", "08222", "$1350.00", "October 1, 2015", "October 1, 2016")}
  describe ".new" do
    it "should tell us the rent per month" do
      expect(myspace.rent).to eq("$1350.00")
    end

    it "should tell us the lease date" do
      expect(myspace.lease_start_date).to eq("October 1, 2015")
    end

    it "should tell us the end date" do
      expect(myspace.lease_end_date).to eq("October 1, 2016")
    end
  end

  describe "#full?" do
    it "should tell me if the apartment complex is full" do
      expect(myspace.full?).to be(false)
    end
  end

  describe "#add_space" do
    it "should add a roomate" do
      myspace.add_space("Captain", "Awesome")
      expect(myspace.space.count).to eq(1)
    end
  end

  describe "#remove_space" do
    it "should remove a roommate" do
      myspace.remove_space
      expect(myspace.space.count).to eq(0)
      end
    end

end
