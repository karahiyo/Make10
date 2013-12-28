module Make10

  @ans_format = "%f%c%f%c%f%c%f"
  @ops = ["+", "-", "*", "/"]
  @parentheses_patterns = ["%f%c%f%c%f%c%f", 
                          "(%f%c%f)%c(%f%c%f)", 
                          "((%f%c%f)%c%f)%c%f", 
                          "(%f%c(%f%c%f))%c%f", 
                          "%f%c((%f%c%f)%c%f)", 
                          "%f%c(%f%c(%f%c%f))", ]

  def solve(*inputs)
    nums_list = make_all_pattern(inputs)
    ans = []
    nums_list.each do |nums|
      @ops.each do |o1|
        @ops.each do |o2|
          @ops.each do |o3|
            @parentheses_patterns.each do |pattern|
              exp = sprintf(pattern, nums[0] , o1, nums[1], o2, nums[2], o3, nums[3])
              ans << exp.gsub(/0|\./, "") if eval(exp) == 10.0
            end
          end
        end
      end
    end

    return ans.uniq

  end

  def make_all_pattern(nums)
    nums_list = []
    nums.permutation.each {|d| nums_list << d}
    nums_list
  end

  module_function :solve, :make_all_pattern

end
