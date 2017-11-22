require_relative 'gameboard'
require_relative 'players'
require_relative 'ui'

class Game

def initialize

  @player1=Player.new
  @player2=Player.new
  @board=Board.new
  @current_player=@player1

end

def check_symbols
  if @player1.symbol==@player2.symbol
    puts "Both players cannot have the same symbol!"
    return false
  end
  return true
end

def game_loop
  while true
  @board.displayboard
    if @board.placemark(@current_player.symbol)
      if self.victory?
        puts "#{@current_player.name} wins!"
        @board.displayboard
        return
      else
      end
      self.change_player
    else
      puts "Not a valid choice. Please choose again"
    end
  end
end






def change_player
  if @current_player==@player1
    @current_player=@player2
  else
    @current_player=@player1
  end
end

def victory?
  if @board.get_first_row(@current_player.symbol) || @board.get_second_row(@current_player.symbol) ||@board.get_third_row(@current_player.symbol)||@board.get_first_collumn(@current_player.symbol)||@board.get_second_collumn(@current_player.symbol)||@board.get_third_collumn(@current_player.symbol)||@board.get_1_5_9(@current_player.symbol)||@board.get_3_5_7(@current_player.symbol)
    return true
  else
    return false
  end
end

end

new_game=Game.new
if new_game.check_symbols
   new_game.game_loop
end
