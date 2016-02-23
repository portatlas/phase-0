# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#fill in the outline here

def gen()
  bingo_array = ["B","I","N","G","O"]
  letter =  bingo_array.sample
  number = rand(100) + 1
  bingo_hash = Hash.new
  bingo_hash[letter] = number
  p bingo_hash
end

# gen


# Check the called column for the number called.
  #fill in the outline here

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]

# bingo_hash = {"G"=>68}


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

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

board.each_index do |x|
  puts x
end


bingo_hash = {"O"=>83}

# bingo_hash.each{|k,v|
#   if k == "B"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][0]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         # else
#         #   puts "False"
#         end
#     end
#   elsif k == "I"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][1]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         # else
#         #   p "False"
#         end
#     end
#   elsif k == "N"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][2]
#          mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#          board[i][mark] = "X"
#         # else
#         #   p "False"
#         end
#     end
#   elsif k == "G"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][3]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         # else
#         #   p "False"
#         end
#     end
#   elsif k == "O"
#     board.each_index do |i|
#       subarray = board[i]
#         if v == board[i][4]
#           mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
#           board[i][mark] = "X"
#         # else
#         #   p "False"
#         end
#     end
#   end
#   p board
# }

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


#Reflection