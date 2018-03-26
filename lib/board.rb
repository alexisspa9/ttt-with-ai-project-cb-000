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
    @cells[input.to_i-1]
  end
  def full?
      @cells.all?{|c| c == "X" || c == "O"}
  end
  def turn_count
    @cells.count{|c| c == "X" || c == "O"}
  end
  def taken?(n)
    !(position(n) == " " || position(n) == "")
  end
  def valid_move?(n)
    n.to_i.between?(1,9) && !taken?(n)
  end
  def update(n, player)
    @cells[n.to_i - 1] = player.token
  end

end
