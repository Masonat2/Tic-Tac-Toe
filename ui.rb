class UI

  def initialize
    rules
  end



  def get_name
    puts "What is your name?"
    @name=gets.chomp
  end

  def get_symbol
    puts "Please select either 'X' or 'O'."
    while true
      @symbol=gets.chomp.upcase
      if @symbol == "X"
        break
      elsif @symbol == "O"
        break
      else
        puts "That is not a valid symbol"
      end
    end
    @symbol
  end


  def rules
    puts "               Tic Tac Toe"
			puts "Tic-tac-toe is a game for two players where each player"
			puts "takes turns placing either an X (echs) or O (oh) on a 3x3"
			puts "grid. The game is won when one player succeeds in placing"
			puts "three consecutive marks on a horizontal, vertical or"
			puts "diagonal line."
  end
end
