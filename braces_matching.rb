# Reopen String class and define a new instance method
class String
	def braces_matching?

		# Create an array of braces
		braces_array = self.split('')

		# Create histogram of types of braces
		braces_histogram = braces_array.inject(Hash.new(0)) { |hash, count| hash[count] += 1; hash }

		# Compare count of open and close braces, if
		# equal, then that type of brace is matching
		if (braces_histogram["("] == braces_histogram[")"])
			return true
		else
			return false
		end
	end
end
