# I worked on this challenge [by myself, with: ].
# Milorad Felbapov


# Your Solution Below

def valid_triangle?(a, b, c)
  # Your code goes here!
if a==0 || b==0 || c==0

    p false  #side 0

  elsif a + b < c || a + c < b || b + c < a

    p false # imposible triangle

  elsif a==b && b==c

    p true #equilateral

  elsif a==b || b==c || a==c

    p true #isoceles

  elsif a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || a**2 + c**2 ==b**2
    p true


  # elsif a.is_a? && b.is_a? && c.is_a?

  #   if a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || a**2 + c**2 ==b**2
  #     p true # it is pithagorian triplet
  #   else
  #     p false
  #   end
  # else
    p true #it is a triangle
  end
end

valid_triangle?(10, 10, 100)

