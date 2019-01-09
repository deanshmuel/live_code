require_relative "../acronymize"

describe "#acronymize" do
  it "should return an empty string when called with a empty string" do
    expected = ""
    actual = acronymize("")
    expect(actual).to eq(expected)
  end
  it "should return FAQ when given frequently asked questions" do
  expected = "FAQ"
  actual = acronymize("frequently asked questions")
  expect(actual).to eq(expected)
end
 it "should return ASAP when given as soon as possible" do
  expected = "ASAP"
  actual = acronymize("as soon as possible")
  expect(actual).to eq(expected)
end
  # it "explained results" do
  # expected = <watever we expect>
  # actual = <function result >
  # expect(actual).to eq(expected)
  #
end
