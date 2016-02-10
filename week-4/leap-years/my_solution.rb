# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# It should return true if the year input is a leap year and false otherwise.

puts "What gregorian year do you want to test for leap year?"

year_input = gets.chomp.to_i

def leap_year?(year_input)

  if year_input%4 == 0 && year_input%100 != 0
    p true

  elsif year_input%400 == 0
    p true

  else year_input%4 != 0
    p false
  end
end

leap_year?(year_input)

