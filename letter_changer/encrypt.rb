def encrypt (sentence)
  alphabet = ("A".."Z").to_a
  sentence.upcase!
  sentence = sentence.split("")
  encrypted_sentence = sentence.map do |char|
    if alphabet.index(char)
      alphabet[alphabet.index(char) - 3]
    else
      char
    end
  end
  return encrypted_sentence.join
end

#TODO: try to think how to decrypt an encrypted message (3 steps left)


# 1. create an array with enire ABC
# 1b. upcase sentence
# 2. split the sentence into characters
# 3. map the array by checking the index and replace with (index-3)
# 4. if it's not in the array, keep as is
# 5. join the array
# 6. return something
