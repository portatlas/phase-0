# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 3 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#fill in the outline here

# def gen()
#   bingo_array = ["B","I","N","G","O"]
#   letter =  bingo_array.sample
#   number = rand(100) + 1
#   bingo_hash = Hash.new
#   bingo_hash[letter] = number
#   p bingo_hash
# end

# gen


# Check the called column for the number called.
  #fill in the outline here

# bingo_hash.each{|k,v|
#   if k == "B"
#     board.each_index do |i|
#       subarray = board[i]
#       subarray.each_index do |x|
#        # board[i][0]
#       end
#       if v == board[i][0]
#         puts "True"
#       else
#         puts "False"
#       end
#     end
#   elsif k == "I"
#     board.each_index do |i|
#       subarray = board[i]
#       subarray.each_index do |x|
#        # board[i][0]
#       end
#       if v == board[i][1]
#         puts "True"
#       else
#         puts "False"
#       end
#     end
#   elsif k == "N"
#     board.each_index do |i|
#       subarray = board[i]
#       subarray.each_index do |x|
#        # board[i][0]
#       end
#       if v == board[i][2]
#         puts "True"
#       else
#         puts "False"
#       end
#     end
#   elsif k == "G"
#     board.each_index do |i|
#       subarray = board[i]
#       subarray.each_index do |x|
#        # board[i][0]
#       end
#       if v == board[i][3]
#         puts "True"
#       else
#         puts "False"
#       end
#     end
#   elsif k == "0"
#     board.each_index do |i|
#       subarray = board[i]
#       subarray.each_index do |x|
#        # board[i][0]
#       end
#       if v == board[i][4]
#         puts "True"
#       else
#         puts "False"
#       end
#     end
#   end
# }


# If the number is in the column, replace with an 'x'
  #fill in the outline here

# bingo_hash.each{|k,v|
#   if k == "B"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][0]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         end
#     end
#   elsif k == "I"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][1]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         end
#     end
#   elsif k == "N"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][2]
#          mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#          board[i][mark] = "X"
#         end
#     end
#   elsif k == "G"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][3]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         end
#     end
#   elsif k == "O"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][4]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         end
#     end
#   end)
# }

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# def print_2d_array(board, cs=3)
#   report = []
#   report << " " * 5 + board[0].enum_for(:each_with_index).map { |e, i|
#     "%#{cs}s" % [i+1, " "]}.join("   ")
#   report << board.enum_for(:each_with_index).map { |ia, i|
#     "%2i [ %s ]" % [i+1, ia.map{|e| "%#{cs}s" % e}.join(" | ") ] }
#   puts report.join("\n")
# end

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @board = board
#     @bingo_hash = Hash.new
#     gen
#   end

#   def gen()

#     bingo_array = ["B", "I", "N", "G", "O"]
#     letter =  bingo_array.sample
#     # number = rand(100) + 1
#     number_test = [47,22,83,25,75,44,69,85,31,70,71,75,97,96,54,8,65,89,68,80,88,73,57,51,83]
#     number = number_test.sample
#     @bingo_hash[letter] = number
#     p @bingo_hash
#   end

#   def check()
#     # @board = board
#     @bingo_hash.each{|k,v|
#        if k == "B"
#          @board.each_index do |i|
#            subarray = @board[i]
#              if v == @board[i][0]
#                mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#                @board[i][mark] = "X"
#              # else
#              #   puts "False"
#              end
#          end
#        elsif k == "I"
#          @board.each_index do |i|
#            subarray = @board[i]
#              if v == @board[i][1]
#                mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#                @board[i][mark] = "X"
#              # else
#              #   p "False"
#              end
#          end
#        elsif k == "N"
#          @board.each_index do |i|
#            subarray = @board[i]
#              if v == @board[i][2]
#               mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#               @board[i][mark] = "X"
#              # else
#              #   p "False"
#              end
#          end
#        elsif k == "G"
#          @board.each_index do |i|
#            subarray = @board[i]
#              if v == @board[i][3]
#                mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#                @board[i][mark] = "X"
#              # else
#              #   p "False"
#              end
#          end
#        elsif k == "O"
#          @board.each_index do |i|
#            subarray = @board[i]
#              if v == @board[i][4]
#                mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#                @board[i][mark] = "X"
#              # else
#              #   p "False"
#              end
#          end
#        end
#      }
#      print_2d_array(@board, cs=3)
#   end

#   def print_2d_array(board, cs=3)
#     report = []
#     report << " " * 5 + @board[0].enum_for(:each_with_index).map { |e, i|
#       "%#{cs}s" % [i+1, " "]}.join("   ")
#     report << @board.enum_for(:each_with_index).map { |ia, i|
#       "%2i [ %s ]" % [i+1, ia.map{|e| "%#{cs}s" % e}.join(" | ") ] }
#     puts report.join("\n")
#   end

# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @board = board
  end

  def call()
    @bingo_array = ["B","I","N","G","O"]
    letter =  @bingo_array.sample
    number = rand(100) + 1
    @bingo_hash = Hash.new
    @bingo_hash[letter] = number
    p @bingo_hash
  end

  def check()
    @bingo_hash.each{|k,v|
       if k == "B"
         @board.each_index do |i|
           subarray = @board[i]
             if v == @board[i][0]
               mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
               @board[i][mark] = "X"
             end
         end
       elsif k == "I"
         @board.each_index do |i|
           subarray = @board[i]
             if v == @board[i][1]
               mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
               @board[i][mark] = "X"
             end
         end
       elsif k == "N"
         @board.each_index do |i|
           subarray = @board[i]
             if v == @board[i][2]
              mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
              @board[i][mark] = "X"
             end
         end
       elsif k == "G"
         @board.each_index do |i|
           subarray = @board[i]
             if v == @board[i][3]
               mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
               @board[i][mark] = "X"
             end
         end
       elsif k == "O"
         @board.each_index do |i|
           subarray = @board[i]
             if v == @board[i][4]
               mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
               @board[i][mark] = "X"
             end
         end
       end
     }
     print_grid_array(@board, cs=3)
  end


  def print_grid_array(board, cs=3)
    grid = []
    grid << " " * 5 + @board[0].enum_for(:each_with_index).map { |e, i|
      "%#{cs}s" % [i+1, " "]}.join("   ")
    grid << @board.enum_for(:each_with_index).map { |ia, i|
      "%2i [ %s ]" % [i+1, ia.map{|e| "%#{cs}s" % e}.join(" | ") ] }
    puts grid.join("\n")
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE


board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]




new_game = BingoBoard.new(board)


new_game.call


new_game.check





#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?


What are the benefits of using a class for this challenge?
The benefits of using a class for this challenge is that I was able to a certain extent compartmentalize the code.
I had each method running specific task and called upon them when needed.

How can you access coordinates in a nested array?
I access the coordinates of the nested array by an each method of the entire array and then creating a
subarray where I was also iterating through to find the values that match a target.  With this I have a coordinate of
the parent array and the subarray. I think there is still a more efficient solution than what I deployed.

What methods did you use to access and modify the array?
I used an each method to figure out the coordinates of the array. And then replaced the value of that coordinate with
an X.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

How did you determine what should be an instance variable versus a local variable?
I used instance variables when I knew I needed to call the variables by different methods. I defined local variables
when they were to be used within the same method.

What do you feel is most improved in your refactored solution
I think my solution can be refactored further. I spend a lot of time refactoring but I ended up breaking the code.
There is still a lot of reptition going on in my refactored solution especially in the check method.
=end