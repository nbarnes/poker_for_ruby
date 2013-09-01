require_relative '../Card'

describe "Card" do

	it "Should reject non-two-character raw Card constructor" do
		expect{Card.new("too_long")}.to raise_error("Raw card length not 2 in Card.intialize: too_long")
	end

	it "Should reject invaid rank tags" do
		expect{Card.new("1d")}.to raise_error("Unrecognized rank tag in Card.rawRankTagToRank: 1")
	end

	it "Should reject invaid suit tags" do
		expect{Card.new("2t")}.to raise_error("Unrecognized suit tag in Card.rawSuitTagToSuit: t")
	end

	it "Should import and export raw card strings correctly" do
		card = Card.new("8d")
		card.asRawString().should eq("8d")
	end

	it "Should return full card string correctly" do
		card = Card.new("Ts")
		card.asVerboseString().should eq("Ten of Spades")
	end

end