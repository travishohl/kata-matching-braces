require_relative "../braces_matching"

describe String, "#braces_matching?" do
	it "given '()' it returns true" do
		result = "()".braces_matching?
		expect(result).to eq(true)
	end
end
