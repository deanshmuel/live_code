#TODO: write a rock paper scissors game
#steps:????

options = ["scissors", "paper", "rock"]
computer = options.sample
puts "Choose either #{options}"
player = gets.chomp

until options.include? player
  puts "Go again"
  player = gets.chomp
end

if player == computer
  puts "its a tie"
elsif player == "scissors" && computer == "paper"
  puts "you win"
elsif player == "scissors" && computer == "rock"
  puts "you lost"
elsif player == "paper" && computer == "scissors"
  puts "you lost"
elsif player == "paper" && computer == "rock"
  puts "you win"
elsif player == "rock" && computer == "scissors"
  puts "you win"
elsif player == "rock" && computer == "paper"
  puts "you lost"
end

# case player
# when "rock"
#   puts (computer=="scissors" ? "you win" : "you lose")

# how can you continue playing until 3
# hw can you ask the user if he/she wants to continue playing or leave



#player input
#computer input
#compare player input to computer input
#display who has won
