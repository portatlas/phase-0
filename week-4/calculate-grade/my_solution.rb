# Calculate a Grade

# I worked on this challenge [by myself, with: ].
# Milorad Felbapov

# Your Solution Below
# Calculate a Grade

# I worked on this challenge [by myself, with: ].


#Your Solution Below
puts "Please enter your average:"
average = gets.chomp.to_i

def get_grade(average)

  case
    when average >= 90
      p "A"

    when average >= 80
      p "B"

    when average >= 70
      p "C"

    when average >= 60
      p "D"

    when average < 60
      p "F"

    else
      p "Not a valid average!"
  end
end

get_grade(average)