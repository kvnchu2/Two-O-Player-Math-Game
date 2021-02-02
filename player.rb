class Player
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def subtract(point)
    self.score = self.score - point
  end
end