require_relative "frequencies"
#frequencies
#read
puts "Hey what do you want to open?"
file_user = gets.chomp
file_readed = read(file_user)
puts frequencies(file_readed)

