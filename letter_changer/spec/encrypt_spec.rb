require_relative "../encrypt"

describe "#encrypt" do
  it "return QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD for the quick brown fox jumps over the lazy dog" do
  expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
  actual = encrypt ("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
  expect(actual).to eq(expected)
  end
  it "should return empty string for the empty string" do
    expected = ""
    actual = encrypt ("")
    expect(actual).to eq(expected)
  end
end
