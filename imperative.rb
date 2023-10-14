class ImperativeBuilder
  attr_reader :expression

  def initialize(expression)
    @expression = expression
  end

  def return(value)
    value
  end

  def zero(_value); end

  def delay(&block)
    block.call
  end
end

def test_puts
  ImperativeBuilder.new("return 0 po 'after return' return 1")
end
