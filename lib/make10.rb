module Make10

  def solve(*inputs)
    sprintf("%d%c%d%c%d%c%d", inputs[0] , "+", inputs[1], "+", inputs[2], "+", inputs[3])
  end

  module_function :solve

end
