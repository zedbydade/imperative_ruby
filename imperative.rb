class ImperativeBuilder
  attr_reader :expression

  def initialize(expression)
    @expression = expression
  end
end

def test_puts 
  ImperativeBuilder.new("return 0 printfn 'after return' return 1")
end
