# Factorial

# I worked on this challenge by myself.



# Your Solution Below



def factorial(number)
  ary = []
  if number < 0
    p "Provide a positive number."
  elsif number == 0
    p 1
  elsif number == 1
    p 1
  elsif
    number_plus1 = number + 1
    while number_plus1 > 1 do
      number_plus1 -= 1
      ary.push(number_plus1)
    end
    # ary.each {|x| number_plus1 *= i}
    # take test and multiply it within each value in the array
    product(ary)
  end
  p product(ary)
end


def product(ary)
  x = 1
  ary.each { |i| x *= i }
  x
end


