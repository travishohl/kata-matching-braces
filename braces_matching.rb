require "./brace"

# Reopen String class and define a new instance method
class String

	# Given a String, returns true if all braces in the String have an opposite partner
	def braces_matching?

		# Create an array of Braces
		braces_array = self.split('').map { |char| Brace.new(char) }

		# Initialize empty stack
		stack = []

		# Iterate over array of Braces, adding open braces to the stack and removing
		# closed braces when a match exists in the stack
		braces_array.each do |brace|
			if brace.is_open?
				stack << brace
			else
				if brace.shape == stack.last.shape
					stack.pop
				else
					return false # mismatch
				end
			end
		end

		return true # all braces match!
	end
end
