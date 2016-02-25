# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


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

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]



# bingo_hash = {"B"=>47}

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
    # @bingo_array = ["B", "I", "N", "G", "O"]
    # @bingo_hash = {"B": 0 ,"I": 1 }
    @bingo_hash = { 0 => "B" }
    @column = @bingo_hash.keys.sample

    # p @bingo_hash.values.sample
    # @number = 47
    @bingo_hash = Hash.new
    gen
  end

  def gen()
<<<<<<< HEAD
    bingo_array = ["B","I","N","G","O"]
    letter =  bingo_array.sample
    number = rand(100) + 1
    bingo_hash = Hash.new
    bingo_hash[letter] = number
    p bingo_hash
  end

=======
    number_test = [47]
    @number = number_test.sample
    # p @nunber
    @bingo_hash[@column] = @number
    p @bingo_hash
  end
>>>>>>> master

  def check()
    if @board[@column].include?(@number)
      @board[@column].map! {|xt| xt == @number ? "X" : xt}
    # if @column == 0
    #   # p @column
    #   p @board[0]
    #   @board[0].map!{|x| x == @number ? "X" : x}
         # @board.each_index do |i|
         #   subarray = @board[i]
         #     if v == @board[i][0]
         #       mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
         #       @board[i][mark] = "X"
         #     end
    end
    p @board
  end

  # def print_2d_array(board, cs=3)
  #   report = []
  #   report << " " * 5 + @board[0].enum_for(:each_with_index).map { |e, i|
  #     "%#{cs}s" % [i+1, " "]}.join("   ")
  #   report << @board.enum_for(:each_with_index).map { |ia, i|
  #     "%2i [ %s ]" % [i+1, ia.map{|e| "%#{cs}s" % e}.join(" | ") ] }
  #   puts report.join("\n")
  # end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE


board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]




new_game = BingoBoard.new(board)

<<<<<<< HEAD
new_game.gen
=======
new_game.check
>>>>>>> master


#Reflection