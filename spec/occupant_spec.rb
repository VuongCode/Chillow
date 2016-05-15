require 'spec_helper'

describe Occupant do
  let(:tenant) {Occupant.new("Captain", "Awesome")}

  describe ".new" do
    it "assigns occupants a first name" do
      expect(tenant.first_name).to eq("Captain")
    end

    it "assigns occupants a last name" do
      expect(tenant.last_name).to eq("Awesome")
    end
  end
end
