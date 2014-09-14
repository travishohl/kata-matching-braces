require "./brace"

# Reopen String class and define a new instance method
class String

	# Given a String, returns true if all braces in the String have an opposite partner
	def braces_matching?

		# Create an array of Braces
		braces_array = self.split('').map { |char| Brace.new(char) }

		return has_match?(braces_array, 0) ? true : false

	end

		#
		# For first brace in the array, send message "has_match?"
		#
		# Method: "has_match?", takes array and a position in the array
	def has_match?(array, position)

		# Remember current_brace
		current_brace = array[position]

		# Remember next_brace (brace at position + 1), unless array ends, then return false
		unless next_brace = array[position + 1]
			return false
		end

		if next_brace.is_open? # If the brace is an open brace
			return has_match?(array, position + 1) # recurse using "has_match?"
		elsif next_brace.is_closed? # else if it is a closed brace
			if current_brace.shape == next_brace.shape # and it is the same shape as me
				return true # found a match! return true!
			else # else if it is not the same type as me
				return false # no match, return false
			end
		end
	end
end
