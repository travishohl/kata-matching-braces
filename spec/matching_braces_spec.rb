require_relative "../matching_braces"

describe String, "#matching_braces?" do

	matching_input = [
		"()",
		"[]",
		"{}",
		"([{}])"
	]

	not_matching_input = [
		"(]",
		"[(])",
		"[({})](]"
	]

	matching_input.each do |input|
		it "returns true given #{input}" do
			result = "#{input}".matching_braces?
			expect(result).to eq(true)
		end
	end

	not_matching_input.each do |input|
		it "returns false given #{input}" do
			result = "#{input}".matching_braces?
			expect(result).to eq(false)
		end
	end
end
