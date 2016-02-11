# Good Guess

# I worked on this challenge by myself.


# Your Solution Below
puts "Guess a number?"
guess = gets.chomp.to_i

def good_guess?(guess)
  if guess == 42
    p true
  else
    p false
  end
end

good_guess?(guess)