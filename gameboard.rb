class Board
  def initialize
    @board=Array.new(3){Array.new(3, " ")}
  end

  def placemark(symbol)
    puts "Where you you like to play (put any number 1-9)"
    while true
      input=gets.chomp.to_i
      case input
      when 1
        if is_valid?(0, 0)
          @board[0][0]=symbol
          return true
        else
          return false
        end
      when 2
        if is_valid?(0, 1)
          @board[0][1]=symbol
          return true
        else
          return false
        end
      when 3
        if is_valid?(0, 2)
          @board[0][2]=symbol
          return true
        else
          return false
        end
      when 4
        if is_valid?(1, 0)
          @board[1][0]=symbol
          return true
        else
          return false
        end
      when 5
        if is_valid?(1, 1)
          @board[1][1]=symbol
          return true
        else
          return false
        end
      when 6
        if is_valid?(1, 2)
          @board[1][2]=symbol
          return true
        else
          return false
        end
      when 7
        if is_valid?(2, 0)
          @board[2][0]=symbol
          return true
        else
          return false
        end
      when 8
        if is_valid?(2, 1)
          @board[2][1]=symbol
          return true
        else
          return false
        end
      when 9
        if is_valid?(2, 2)
          @board[2][2]=symbol
          return true
        else
          return false
        end
      else
        puts "not a valid number, please choose again"
      end
    end
  end

  def displayboard
    print "\n\n"
    (0..2).each do |row|
      (0..2).each do |collumn|
        print @board[row][collumn]
        print " |" unless collumn == 2
      end
      print "\n--------\n" unless row == 2
    end
    print "\n\n\n\n"
  end

  def get_1_5_9(current_symbol)
    diag=[]
    (0..2).each {|number| diag.push(@board[number][number])}
    diag.all? {|space| space=="#{current_symbol}"}
  end

  def get_3_5_7(current_symbol)
    diag=[]
    (0..2).each {|number| diag.push(@board[number][2-number])}
    diag.all? {|space| space=="#{current_symbol}"}
  end

  def get_first_row(current_symbol)
    line=[]
    (0..2).each {|row| line.push(@board[0][row])}
    line.all? {|space| space=="#{current_symbol}"}
  end

  def get_second_row(current_symbol)
    line=[]
    (0..2).each {|row| line.push(@board[1][row])}
    line.all? {|space| space=="#{current_symbol}"}
  end

  def get_third_row(current_symbol)
    line=[]
    (0..2).each {|row| line.push(@board[2][row])}
    line.all? {|space| space=="#{current_symbol}"}
  end

  def get_first_collumn(current_symbol)
    line=[]
    (0..2).each {|collumn| line.push(@board[collumn][0])}
    line.all? {|space| space=="#{current_symbol}"}
  end

  def get_second_collumn(current_symbol)
    line=[]
    (0..2).each {|collumn| line.push(@board[collumn][1])}
    line.all? {|space| space=="#{current_symbol}"}
  end

  def get_third_collumn(current_symbol)
    line=[]
    (0..2).each {|collumn| line.push(@board[collumn][2])}
    line.all? {|space| space=="#{current_symbol}"}
  end

  def is_valid?(x, y)
    @board[x][y]==" "
  end

end
