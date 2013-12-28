module Make10

  @ans_format = "%d%c%d%c%d%c%d"
  @ops = ["+", "-", "*", "/"]

  def solve(*inputs)
    nums_list = make_all_pattern(inputs)
    ans = []
    nums_list.each do |nums|
      @ops.each do |o1|
        @ops.each do |o2|
          @ops.each do |o3|
            exp = sprintf(@ans_format, nums[0] , o1, nums[1], o2, nums[2], o3, nums[3])
            ans << exp if eval(exp) == 10
          end
        end
      end
    end

    return ans

  end

  def make_all_pattern(nums)
    nums_list = []
    nums.permutation.each {|d| nums_list << d}
    nums_list
  end

  module_function :solve, :make_all_pattern


end
