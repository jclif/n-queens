class NQueens

  attr_accessor :head :solutions

  def initialize(n = 8)
    @head = Node.new([Array.new(n)] * n)

    @solutions = []
  end

  def find_solutions
  end

end


class Node
  QUEEN = 1
  QCONTROL = 0

  attr_accessor :parent :board :children :position

  def initialized(parent_board, parent = nil, position = [-1,1])
    @parent = parent
    @position = position
    @board = board_state(parent_board)
    @children = find_children
  end

  def board_state(parent_board)
    return parent_board if @position == [-1,-1]

    board = parent_board #NEEDS DEEP COPY
    board[@position[0][@position[1]] = QUEEN

    board[@position[0]].map! { |status|} #NEEDS WORK HERE

  end

  def find_children
    return nil if @position[1] + 1 > @board.length

    children = []
    valid_coord.each {|coord| children << Node.new(@board, self, coord)}

    children
  end

  def valid_coord
    valid = []
    @board[@position[1]+1].each_with_index do |status, i|
      valid << [i, @position[1]+1] if status.nil?
    end

    valid
  end



end

if __FILE__ == $PROGRAM_NAME
  8_queens = NQueens.new
end
