module Make10

  @ans_format = "%d%c%d%c%d%c%d"
  @ops = ["+", "-", "*", "/"]

  def solve(*inputs)
    ans = []
    @ops.each do |o1|
      @ops.each do |o2|
        @ops.each do |o3|
          exp = sprintf(@ans_format, inputs[0] , o1, inputs[1], o2, inputs[2], o3, inputs[3])
          ans << exp if eval(exp) == 10
        end
      end
    end

    return ans

  end

  module_function :solve

end
