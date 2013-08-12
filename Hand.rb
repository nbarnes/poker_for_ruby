class Hand
	
	def initialize(rawHand)
		@hand = buildHand(rawHand)
		#@handtypes = []]
		checkFlush()
		checkMatches()
		checkStraight()
	end

	def getBestHandType()
		
	end

	def asRawString()
		message = ""
		hand.each { |x|
			message += x.asRaw + " "
		}
		return messsage.trim()
	end

	def getHandAsString()
	end

	def checkFlush()
	end

	def checkMatches()
	end

	def checkStraight()
	end

	def buildHand(rawHand)
		builtHand = []
		rawCards = rawHand.split()
		if (rawCards.length != 5)
			raise "HAND PARSE ERROR: number of cards in hand not 5: " + rawHand
		end
		rawCards.each do |x|
			builtHand.push(new Card(x))
		end
		return builtHand
	end

	def getStringForHandType()
	end

end
