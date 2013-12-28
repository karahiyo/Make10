require 'helper'

class Make10Test < Test::Unit::TestCase
  def test_solve
    assert_equal(["1+2+3+4", "1*2*3+4"], Make10.solve(1, 2, 3, 4));
    assert_equal(["5-1-1+7"], Make10.solve(5, 1, 1, 7));
  end
end
