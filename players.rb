require_relative 'ui'

class Player
  def initialize()
  @ui=UI.new
  @name=@ui.get_name
  @symbol=@ui.get_symbol
  end

  def symbol
    @symbol
  end
  def name
    @name
  end
end
