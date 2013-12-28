require 'helper'

class Make10Test < Test::Unit::TestCase
  def test_solve
    ret = Make10.solve(1, 2, 3, 4)
    # solve problem without sorting and parentheses
    assert_equal(true, ret.include?(sprintf("%d+%d+%d+%d", 1, 2, 3, 4)));
    assert_equal(true, ret.include?(sprintf("%d*%d*%d+%d", 1, 2, 3, 4)));
    # solve problem with sort, but without parentheses
    ret = Make10.solve(1, 1, 5, 7)
    assert_equal(true, ret.include?(sprintf("%d-%d-%d+%d", 5, 1, 1, 7)));
    # solve problem with sort and parentheses
    ret = Make10.solve(1, 1, 5, 8)
    assert_equal(true, ret.size == 1);
  end
end
