require_relative '../Hand'

describe Hand, "Hand" do

	it "Should reject hand inputs > 5 cards" do
		expect{Hand.new("Td 8s 2d 9s 8d 6d")}.to raise_error("HAND PARSE ERROR: number of cards in hand not 5: Td 8s 2d 9s 8d 6d")
	end

	it "Should reject hand inputs < 5 cards" do
		expect{Hand.new("2s 7s Qd Jc")}.to raise_error("HAND PARSE ERROR: number of cards in hand not 5: 2s 7s Qd Jc")
	end

	it "Should import and export raw hand Strings" do
		hand = Hand.new("8d 8h 2s 3d Kc")
		hand.asRawString().should eq("8d 8h 2s 3d Kc")
	end

#	it "Should recognize high card hands" do
#		hand = Hand.new("9d 7c 5s 3h Kd")
#		hand.getBestHandType().should eq("High card: King of Diamonds")
#	end

end