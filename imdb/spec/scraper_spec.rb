# data for #fetch_movies_url:
# [
#   "http://www.imdb.com/title/tt0111161/",
#   "http://www.imdb.com/title/tt0068646/",
#   "http://www.imdb.com/title/tt0071562/",
#   "http://www.imdb.com/title/tt0468569/",
#   "http://www.imdb.com/title/tt0050083/"
# ]

# data for #scrape_movie:
# {
  # cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
  # director: "Christopher Nolan",
  # storyline: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
  # title: "The Dark Knight",
  # year: 2008
# }
require_relative '../scraper'
require_relative '../interface'

describe "#fetch_movies_url" do
  it "should return the top 5 movie links" do
    expect(fetch_movies_url).to eq([
  "http://www.imdb.com/title/tt0111161/",
  "http://www.imdb.com/title/tt0068646/",
  "http://www.imdb.com/title/tt0071562/",
  "http://www.imdb.com/title/tt0468569/",
  "http://www.imdb.com/title/tt0050083/"
])
  end
end
describe "#scrape_movie" do
  it "should return cast, directory, storyline, title and year" do
    expect(scrape_movie('https://www.imdb.com/title/tt0468569/')).to eq({cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
  director: "Christopher Nolan",
  storyline: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
  title: "The Dark Knight",
  year: 2008})
  end
end
