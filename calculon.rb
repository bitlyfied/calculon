class Calculon

  attr_accessor :total

  def initialize
    @total = 0
  end

  def add( n )
    @total += n
  end

  def subtract( n )
    @total -= n
  end

end