def acronymize(sentence)
 new_words = sentence.split
  acronym = new_words.map do |word|
  word[0].capitalize
  end
  return acronym.join

end
# create empty array
# split the given string into array of words
# take the first letter of every word and put it into the array
# capitalize every letter
# join the array to make a string




