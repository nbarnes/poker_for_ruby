require_relative '../Hand'

describe "Hand" do

	it "Should reject hand inputs > 5 cards" do
		expect{Hand.new("Td 8s 2d 9s 8d 6d")}.to raise_error("HAND PARSE ERROR: number of cards in hand not 5: Td 8s 2d 9s 8d 6d")
	end

	it "Should reject hand inputs < 5 cards" do
		expect{Hand.new("2s 7s Qd Jc")}.to raise_error("HAND PARSE ERROR: number of cards in hand not 5: 2s 7s Qd Jc")
	end

	it "Should reject empty hand inputs" do
		expect{Hand.new("")}.to raise_error("HAND PARSE ERROR: number of cards in hand not 5: ")
	end


	["8d 8h 2s 3d Kc", 
	 "Ah Kd Jd 4c 2d", 
	 "9h 7d Jd Jc Js", 
	 "Qs Ts 7s 5s 4s"].each do |rawHand|
		it "Should import and export raw hand Strings" do
			Hand.new(rawHand).asRawString().should eq(rawHand)
		end
	end

	it "Should recognize high card hands" do
		hand = Hand.new("9d 7c 5s 3h Kd")
		hand.getBestHandType().should eq(HIGH_CARD)
	end

	["3d 4d 7d 9d Jd", 
	 "Ah Kh Jh 3h 2h", 
	 "Qs Ts 7s 5s 4s"].each do |rawHand|
		it "should recognize flush hands from an array" do
			Hand.new(rawHand).getBestHandType().should eq(FLUSH)
		end
	end

	["4d 4c 5s 5h 5d",
	 "7s 7d 7h Js Jd",
	 "9d 8s 9h 8c 9c"].each do |rawHand|
	 	it "should recognize full house" do
	 		Hand.new(rawHand).getBestHandType().should eq(FULL_HOUSE)
	 	end
	 end

	it "Should recognize two pair" do
		hand = Hand.new("8d 8s 7h 7s Ah")
		hand.getBestHandType().should eq(TWO_PAIR)
	end

	it "Should recognize four of a kind" do
		hand = Hand.new("Ah Ad As Ac Jd")
		hand.getBestHandType().should eq(FOUR_OF_A_KIND)
	end

	it "Should recognize three of a kind" do
		hand = Hand.new("Jd Jc Jh 8s 4c")
		hand.getBestHandType().should eq(THREE_OF_A_KIND)
	end

	it "Should recognize pair" do
		hand = Hand.new("6d 6h 2h 4c Jd")
		hand.getBestHandType().should eq(PAIR)
	end

	["Ad Kd Qs Jc Tc",
	 "9h 6c 8d 5s 7d",
	 "2h 3h 4c 5c 6c"].each do |rawHand|
	 	it "should recognize straight" do
	 		Hand.new(rawHand).getBestHandType().should eq(STRAIGHT)
	 	end
	 end

	["2d 3d 4d 5d 6d",
	 "5h 8h 9h 6h 7h",
	 "8c 7c 6c 5c 4c",
	 "Ks Js Ts 9s Qs"].each do |rawHand|
	 	it "should recognize straight flush" do
	 		Hand.new(rawHand).getBestHandType().should eq(STRAIGHT_FLUSH)
	 	end
	 end

	["Ad Kd Qd Jd Td",
	 "Th Jh Qh Kh Ah",
	 "Jc Ac Qc Kc Tc"].each do |rawHand|
	 	it "should recognize royal flush" do
	 		Hand.new(rawHand).getBestHandType().should eq(ROYAL_FLUSH)
	 	end
	 end


end