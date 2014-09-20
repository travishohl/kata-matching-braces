require_relative "../matching_braces"

describe String, "#matching_braces?" do

	#
	# Simple matching braces of each type
	#
	it "returns true given '()'" do
		result = "()".matching_braces?
		expect(result).to eq(true)
	end

	it "returns true given '[]'" do
		result = "[]".matching_braces?
		expect(result).to eq(true)
	end

	it "returns true given '{}'" do
		result = "{}".matching_braces?
		expect(result).to eq(true)
	end

	#
	# Corner cases
	#
	it "returns false given '(]'" do
		result = "(]".matching_braces?
		expect(result).to eq(false)
	end

	it "returns true given '([{}])'" do
		result = "([{}])".matching_braces?
		expect(result).to eq(true)
	end

	it "returns false given '[(])'" do
		result = "[(])".matching_braces?
		expect(result).to eq(false)
	end

	it "returns false given '[({})](]'" do
		result = "[({})](]".matching_braces?
		expect(result).to eq(false)
	end
end
