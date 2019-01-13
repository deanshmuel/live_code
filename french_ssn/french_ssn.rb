require 'date'
require 'yaml'
TH = YAML.load_file('data/french_departments.yml')


# Gender (1 == man, 2 == woman)
# Year of birth (84)
# Month of birth (12)
# Department of birth (76, basically included between 01 and 99)
# 6 random digits (451 089)
# A 2 digits key (46, equal to the remainder of the division of (97 - ssn_without_key) by 97.)

# if the imput is correct
# check the value of hash
# if number giving value
# hash |gender, month, year, location|
#return sentence and must to be a variable
#a man, born in December, 1984 in Seine-Maritime.

#your version (the best)
def french_ssn(num)
  redex =  num.match(/^(?<gender>(1|2))\s*(?<year>\d{2})\s*(?<month>(0\d|1[0-2]))\s*(?<location>\d{2})\s*(\d{3}\s*){2}(?<key>\d{2})/)
    if redex
    return "a #{redex[:gender] == 1 ? "woman" : "man"}, born in #{Date::MONTHNAMES[redex[:month].to_i]}, 19#{redex[:year]} in #{TH[redex[:location]]}."
  else
    return "The number is invalid"
  end
end




##deans version
def french_ssn(num)
  redex =  num.match(/^(?<gender>(1|2))\s*(?<year>\d{2})\s*(?<month>(0\d|1[0-2]))\s*(?<location>\d{2})\s*(\d{3}\s*){2}(?<key>\d{2})/)
    if redex
    return "a #{gender_to_text(redex[:gender])}, born in #{date_to_txt(redex[:month])}, 19#{redex[:year]} in #{TH[redex[:location]]}."
  else
    return "The number is invalid"
  end
end
def gender_to_txt(gender)
  return (gender==1? "man" : "woman")
end

def date_to_txt(date)
  return Date::MONTHNAMES[date.to_i]
end




