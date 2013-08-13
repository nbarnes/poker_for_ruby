require_relative '../Card'

describe Card, "Card" do

	it "Should import and export raw card strings correctly" do
		card = Card.new("8d")
		card.asRawString().should eq("8d")
	end

end