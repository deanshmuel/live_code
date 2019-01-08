#TODO: write a function that
# recieves: a sentence
#return: acronym (capital letters)
#TDD

def acronym(sentence)
  array = sentence.split
  first_letter = []
  array.each {|word| first_letter << word[0].capitalize}
  return first_letter.join
end

puts acronym("frequently asked questions") == "FAQ"
puts acronym("as Soon As PoSSible") == "ASAP"
puts acronym("Hello People of the Wagon") == "HPOTW"
puts acronym("   ") == ""
puts acronym("Hello      People") == "HP"


# gets a sentence
# .split into words
#  first_letter = []
#  get first letter , caps it
#  put it in array
#  [].join
# words_arr = words_str.split(/\s*-\s*/)

