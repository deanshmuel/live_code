require_relative "../french_ssn"

describe "#french_ssn" do
  it "should return 'a man, born in December, 1984 in Seine-Maritime.' when given 1 84 12 76 451 089 46" do
    expect(french_ssn("1 84 12 76 451 089 46")).to eq("a man, born in December, 1984 in Seine-Maritime.")
  end
  it "should return 'The number is invalid' when given 123" do
    expect(french_ssn("123")).to eq("The number is invalid")
  end
end
