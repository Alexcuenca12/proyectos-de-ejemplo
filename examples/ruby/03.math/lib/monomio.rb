
class Monomio
  attr_accessor :value, :xexp

  def initialize(value, xexp=1)
    @value = value
    @xexp = xexp
  end

  def to_s
    part2 = "x^#{@xexp}"
    part2 = '' if @xexp.zero?
    if @xexp == 1
      part2 = 'x'
    end

    part1 = "#{@value}"
    part1 = "-" if @value.abs == 1
    if @value.zero?
      part1 = ''
      part2 = ''
    end

    #require 'pry-byebug'; binding.pry

    part1 + part2
  end

  def +(monomio)
    unless @xexp == monomio.xexp
      raise '[FAIL] Los monomios no tienen igual exponente de x'
    end
    value = @value + monomio.value
    Monomio.new(value, @xexp)
  end

  def -(monomio)
    unless @xexp == monomio.xexp
      raise '[FAIL] Los monomios no tienen igual exponente de x'
    end
    Monomio.new(value, @xexp)
  end
end
