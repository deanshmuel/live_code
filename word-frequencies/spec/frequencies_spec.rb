# spec/frequencies_spec.rb
require_relative "../frequencies"


# the_frequencies = frequencies("the lazy dog jumped over the brown fox")
#syntax: expect(something).to eq(other_thing)
describe "#frequencies" do
  it "For an empty string should return empty hash" do
  expect(frequencies("")).to eq({})
  end
  it "For a sentence should return hash with word frequencies" do
  the_frequencies = frequencies("the lazy dog jumped over the brown fox")
  expect(the_frequencies["the"]).to eq(2)
  expect(the_frequencies["cat"]).to eq(nil)
  expect(the_frequencies["jumped"]).to eq(1)
  end
end
