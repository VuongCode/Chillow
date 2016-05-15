require 'spec_helper'

describe Box do
  describe ".new" do
    it "should extract the same first name in Occupant" do
      expect(Box.new("Justin", "Long").first_name).to eq("Justin")
    end
    it "should extract the same last name in Occupant" do
      expect(Box.new("Jeremy", "Piven").last_name).to eq("Piven")
    end
  end
end
