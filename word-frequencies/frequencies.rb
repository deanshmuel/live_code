 def frequencies(text)
  array = text.split(" ")
  histogram = {}
  array.each do |word|
    if histogram.include?(word)
      histogram[word] += 1
    else
      histogram[word] = 1


    end

  end
    return histogram
 end

#slipt the sting into an array
#create an empty hash
#each over the array
# check if the word exsits in the hash
#if it dosent exsit we need to create it with the value 1
#if it does exsit add 1
#return the hash !!!


def read(file)
  return File.read(file).strip
end


# open a file and return a string
