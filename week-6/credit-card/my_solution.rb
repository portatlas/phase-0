
# Your previous Plain Text content is preserved below:

# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A 16 digit credit card number
# Output: true or false depending on if the CC# is valid or not.
# Steps:
=begin
# Maybe reverse the numbers then double every even number until we reach the 1st number.

Break down any double digits to their individual integers
Add all the single digiits together.

IF sum of all digits is modulo of 10 == 0, then true. Else false (possible define false condition)
=end


# Initial Solution
# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(card_number)
#     @card_number = card_number.to_s.chars.map(&:to_i)
#     check_card_length
#   end

#   def check_card_length
#     unless @card_number.length == 16
#       raise ArgumentError.new("Invalid card Number.")
#     end
#     check_card
#   end

#     def check_card(card)
#     if @card_number.length == 16
#         p @card_number
#        test1 = @card_number.reverse.map!.with_index {|n ,i| i.even? ? n * 2: n}
#        p test1
#        test2 = test1.join.split('')
#        p test2
#        test2.map!{|x| x.to_i}
#        p test2
#        test3 = test2.inject(0){|sum,x| sum + x}
#        p test3%10 == 0
#        end
#   end

# end


# # Refactored Solution
#

class CreditCard

  def initialize(card_number)
    @card_number = card_number.to_s.chars.map(&:to_i)
    check_card_length
  end

  def check_card_length
    unless @card_number.length == 16
      raise ArgumentError.new("Invalid card Number.")
    end
    check_card
  end

  def check_card
    if @card_number.length == 16
       num_rev_split_evendouble = @card_number.reverse.map!.with_index {|n ,i| i.odd? ? n * 2: n}.join.split('')
       num_rev_split_evendouble.map!{|x| x.to_i}
       sum_of_num = num_rev_split_evendouble.inject(0){|sum,x| sum + x}
       sum_of_num%10 == 0
    end
  end

end

#Reflect
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part of this challenge was to create a new instance,
and call the methods. We kept on getting an argument error. The workaround
was to test the methods outside of the class.

What new methods did you find to help you when you refactored?
A new method we learned and implemented was with_index, inject, and odd?
We also were able to string a bunch of methods together as opposed to setting
them to a another variable and then passing calling on methods on the
new variable.

What concepts or learnings were you able to solidify in this challenge?
We got a solid understanding on string methods together and troubleshooting them.
There was an instance were we didn't get the results we wanted, so we just
back tracked through each method and were able to uncover the issue quite
quickly.
=end