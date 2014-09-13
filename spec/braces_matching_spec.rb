require_relative "../braces_matching"

describe String, "#braces_matching?" do

	#
	# Simple matching braces of each type
	#
	it "returns true given '()'" do
		result = "()".braces_matching?
		expect(result).to eq(true)
	end

	it "returns true given '[]'" do
		result = "[]".braces_matching?
		expect(result).to eq(true)
	end

	it "returns true given '{}'" do
		result = "{}".braces_matching?
		expect(result).to eq(true)
	end

	#
	# Corner cases
	#
	it "returns false given '(]'" do
		result = "(]".braces_matching?
		expect(result).to eq(false)
	end

	it "returns true given '([{}])'" do
		result = "([{}])".braces_matching?
		expect(result).to eq(true)
	end

	it "returns false given '[(])'" do
		result = "[(])".braces_matching?
		expect(result).to eq(false)
	end
end
