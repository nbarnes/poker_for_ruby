require_relative "./CardDefinitions"

class Card

	attr_reader :suit, :rank

	def initialize(rawCard)
		if rawCard.length != 2
			raise "Raw card length not 2 in Card.intialize: " + rawCard
		end
		rank = Card.rawRankTagToRank(rawCard[0])
		suit = Card.rawSuitTagToSuit(rawCard[1])
	end

	def getRankAsString()
	end

	def getSuitAsString()
	end

	def asRawString()
		return Card.suitToRawSuitTag(suit) + Card.rankToRawRankTag(rank)
	end

	def self.rawRankTagToRank(rawTag)

	end

	def self.rawSuitTagToSuit(rawTag)
	end


	def self.suitToRawSuitTag(suit)


#		if true
#			return "xx"
#		end

		SUITS.each do |x|
			if x[SUIT_INDEX]
				return x[RAW_SUIT_TAG_INDEX]
			end
 		end

	end

	def self.rankToRawRankTag(rank)
#		CardDefinitions.RANKS.each { |x|
#			if (x[RANK_INDEX] = rank) {
#			  return x[RAW_RANK_TAG_INDEX]
#			}
#		}
	end


end
