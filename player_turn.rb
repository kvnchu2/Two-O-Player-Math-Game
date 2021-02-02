class PlayerTurn 
  attr_accessor :turn

  def initialize(turn)
    @turn = turn
  end

  def switch(turn)
    self.turn = turn
  end
end