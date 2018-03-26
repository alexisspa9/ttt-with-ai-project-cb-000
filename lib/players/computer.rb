module Players
  class COmputer < Player

    def move(board)
      puts "Please enter your move 1-9:"
      gets.strip
    end
  end
end
