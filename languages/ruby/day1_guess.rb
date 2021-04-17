# • Bonus problem: If you’re feeling the need for a little more, write
# a program that picks a random number. Let a player guess the
# number, telling the player whether the guess is too low or too high.
# (Hint: rand(10) will generate a random number from 0 to 9, and
# gets will read a string from the keyboard that you can translate to
# an integer.)  

attempts = 5
number = rand(10)
spot_on = false

until spot_on or attempts < 0

  puts "Last chance" if attempts == 0
  puts "Guess a number:"
  guess = gets.to_i

  if guess > number
      puts "Too high"
  elsif  guess < number
      puts "Too low"
  else
      puts "Spot on! YOU WIN!"
      spot_on = true
  end
  attempts -= 1
end

if attempts < 0 and not spot_on
  puts "ERRRRRROR. I thought of #{number}"
end