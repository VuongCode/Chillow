require 'spec_helper'

describe Truck do
  let(:mobile) {Truck.new(10)}
  describe ".new" do
    it "should have the same information from the Module Manager" do
      expect(mobile).to be_a(Truck)
    end
  end

  describe "#add_boxes" do
    it "should add boxes to the truck" do
      mobile.add_space("Chris", "Pine")
      expect(mobile.space.size).to eq(1)
    end
  end

  describe "#remove_boxes" do
    it "should remove boxes from the truck" do
      mobile.add_space("Chris", "Pine")
      mobile.remove_space
      expect(mobile.space.size).to eq(0)
    end
  end

  describe "#remove_someones_box" do
    it "should remove all boxes from a person" do
      mobile.add_space("Michael", "Chang")
      mobile.add_space("Michael", "Chang")
      mobile.add_space("Rachel", "Cotz")
      mobile.remove_someones_box("Michael", "Chang")
      expect(mobile.space.size).to eq(1)
    end
  end
end
