class Brace

	# Turn a character into a Brace
	def initialize(character)

		# Determine type of brace
		if character == "(" or character == ")"
			@shape = "round"
			character == "(" ? @direction = "open" : @direction = "closed"
		elsif character == "[" or character == "]"
			@shape = "square"
			character == "[" ? @direction = "open" : @direction = "closed"
		elsif character == "{" or character == "}"
			@shape = "curly"
			character == "{" ? @direction = "open" : @direction = "closed"
		else
			raise ArgumentError, "#{character} is not a brace."
		end

		# Save character
		@character = character
	end

	def shape
		return @shape
	end

	def direction
		return @direction
	end

	def is_open?
		return @direction == "open" ? true : false
	end

	def is_closed?
		return self.is_open? ? false : true
	end

	def type
		return [self.shape, self.direction]
	end

	def to_s
		return @character
	end
end
