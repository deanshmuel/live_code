require "open-uri"
require "nokogiri"

def fetch_movie_urls
  top_url = "http://www.imdb.com/chart/top"
  doc = Nokogiri::HTML(open(top_url).read)
  movies = doc.search(".titleColumn a")
  movies.take(5).map do |movie|
    uri = URI.parse(movie.attributes["href"].value)
    uri.scheme = "http"
    uri.host = "www.imdb.com"
    uri.query = nil
    uri.to_s
  end
end

def scrape_movie(url)
  doc = Nokogiri::HTML(open(url, "Accept-Language" => "en").read)
  m = doc.search("h1").text.match /(?<title>.*)[[:space:]]\((?<year>\d{4})\)/
  title = m[:title]
  year = m[:year].to_i

  storyline = doc.search(".summary_text").text.strip
  director = doc.search("h4:contains('Director:') + a").text
  cast = doc.search(".primary_photo + td a").take(3).map do |element|
    element.text.strip
  end

  {
    title: title,
    cast: cast,
    director: director,
    storyline: storyline,
    year: year
  }
end
