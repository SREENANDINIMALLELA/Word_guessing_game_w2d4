class Player
  attr_reader :name ,:lives
  def initialize(name , lives )
    @name = name
    @lives = lives
  end
  def substract_lives()
    if @lives > 0
return  @lives -= 1
end
  end
end
