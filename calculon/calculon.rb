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

  def clear
    @total = 0
  end

  def eve( exp )
    raise ArgumentError unless /^[\d +-]*$/ =~ exp
    @total = eval exp
  end

end