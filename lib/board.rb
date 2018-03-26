class Board
  attr_accessor :cells

  def initialize

    reset!
  end
  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

  end
  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(input)
    cells[input.to_i-1]
  end
  def full?
      @cells.all?{|c| c == "X" || c == "O"}
  end
  def turn_count


  end
  def taken?(n)
    @cells[n.to_i].include?("X") || @cells[n.to_i].include?("O")
  end
  def valid_move?

  end
  def update

  end

end
