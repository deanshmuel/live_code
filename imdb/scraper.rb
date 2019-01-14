#for dean
#open(url, "Accept-Language" => "en")
require 'open-uri'
require 'nokogiri'

# def fetch_movies_url
#   url = "https://www.imdb.com/chart/top"
#   movies_array = []
#   html_file = open(url).read
#   html_doc = Nokogiri::HTML(html_file)

#   html_doc.search('.titleColumn a').each_with_index do |element, index|
#     #puts element.attribute('href')
#     movies_array << "https://www.imdb.com#{element.attribute('href').value.match(/^[^\?]*/)}"
#     break if index == 4
#   end
#   return movies_array
# end
# puts fetch_movies_url


def scrape_movie(url)
  html_file = open(url).read
  html_doc = Nokogiri::HTML(html_file)

  movie_info = {}
  html_doc.search('.plot_summary .summary_text').each_with_index do |element, index|
    movie_info[:storyline] = element.text
  end
  return movie_info
end

puts scrape_movie("https://www.imdb.com//title/tt0111161")

