class ImperativeBuilder
  attr_reader :expression

  def initialize(expression)
    @expression = expression
  end

  def return(value)
    value
  end

  def zero(_value); end

  def delay(code)
    code.call
  end

  def combine(code1, code2)
    response = code1.call
    return response unless response.nil?

    code2.call
  end

  def run(imperative)
    response = imperative.call
    return response unless response.nil?

    raise Exception 'nothing returned!'
  end
end
