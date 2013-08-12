require_relative '../Hand'

describe Hand, "Hand" do

	it "Should import and export raw hand strings correctly" do
		@hand = Hand.new("8d 5d 2d Jd Kd")
		hand.asRawString().should eq("8d 5d 2d Jd Kd")
	end

end