class BingoBoard

  def initialize(board)
    @board = board
    @bingo_hash_call = Hash.new
  end

  def gen()
    bingo_array = ["B" , "I", "N", "G", "O"]
    letter =  bingo_array.sample
    # number = rand(100) + 1
    number = 22
    @bingo_hash_call[letter] = number
    p @bingo_hash_call
  end



  def check()
    @bingo_hash_call.each{|k,v|
       if k == "B"
        check_number
         # @board.each_index do |i|
         #   subarray = @board[i]
             # if v == @board[i][0]
             #  subarray.map!{|x| x != v ? x : "X" }
             #  p subarray
               # mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
               # p mark
               # p i
               # p subarray
               # subarray.map_index{|x| p x}
               # subarray.map!{|x| x == @mark ? x = "X" : x}
               # p subarray
               # @board.map!{|[i][mark]| [i][mark] = "X"}
         #     end
         # end
       elsif k == "I"
        check_number
         # @board.each_index do |i|
         #   subarray = @board[i]
         #     if v == @board[i][1]
         #      subarray.map!{|x| x != v ? x : "X" }
         #       # mark =  subarray.each_index.select{|i| subarray[i] == v}.join.to_i
         #       # @board[i][mark] = "X"
         #     # else
         #     #   p "False"
         #     end
         # end
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
     print_2d_array(@board, cs=3)
  end

  def print_2d_array(board, cs=3)
    report = []
    report << " " * 5 + @board[0].enum_for(:each_with_index).map { |e, i|
      "%#{cs}s" % [i+1, " "]}.join("   ")
    report << @board.enum_for(:each_with_index).map { |ia, i|
      "%2i [ %s ]" % [i+1, ia.map{|e| "%#{cs}s" % e}.join(" | ") ] }
    puts report.join("\n")
  end

end


board = [[47, 22, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)

new_game.gen

new_game.check


