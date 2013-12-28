require 'helper'

class Make10Test < Test::Unit::TestCase
  def test_solve
    ret = Make10.solve(1, 2, 3, 4)
    # solve problem without sorting and parentheses
    assert_equal(true, ret.include?("1+2+3+4"));
    assert_equal(true, ret.include?("1*2*3+4"));
    # solve problem with sort, but without partheses
    assert_equal(true, Make10.solve(1, 1, 5, 7).include?("5-1-1+7"));
  end
end
