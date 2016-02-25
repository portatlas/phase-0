class BingoBoard


    def initialize(board)
      @bingo_board = board
      #creates array with 5 sub arrays containing randomly generated numbers.
      @bingo = {'B'=>0,'I'=>1,'N'=>2,'G'=>3,'O'=>4}
      @number = [47,22,83,25,75,44,69,85,31,70,71,75,97,96,54,8,65,89,68,80,88,73,57,51,83]
      @num = @number.sample
      @letter_index = @bingo.values.sample #randomly generated index to target the elements in the matching index of the arrays sub-arrays.
    end

def generator #generates the display
  if @letter_index == 0
    puts"B #{@num}"
  elsif @letter_index == 1
    puts"I #{@num}"
    elsif @letter_index == 2
    puts"N #{@num}"
    elsif @letter_index == 3
    puts"G #{@num}"
    elsif @letter_index == 4
    puts"O #{@num}"
  end
end

def play #stamps X if random number is found inside sub-array of targeted index.
    if @bingo_board[@letter_index].include?(@num)
    @bingo_board[@letter_index].map! {|el| el == @num ? "X" : el}
        puts ('%3s ' * 5) % 'BINGO'.split('')
          5.times do |y|
            5.times { |x| print "%3s " % @bingo_board[x][y] } #print the sub arrays vertically, with each index side by side, starting with 0 on the left.
            puts ""
          end
    else #prints the bingo_board.
          puts ('%3s ' * 5) % 'BINGO'.split('')
          5.times do |y|
          5.times { |x| print "%3s " % @bingo_board[x][y] }
            puts " "
      end
    end
 end

def run # one method to rule them all!
  generator
  play
end

end

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

newtest = BingoBoard.new(board)

