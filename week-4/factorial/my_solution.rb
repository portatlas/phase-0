# Factorial

# I worked on this challenge [by myself, with: ].

# number = 10


# Your Solution Below
# ary = []



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
    def product(ary)
      final = 1
      ary.each { |i| final *= i }
      final
    end
  end
  p product(ary)
end

factorial(10)
