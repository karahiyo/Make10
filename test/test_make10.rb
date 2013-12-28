require 'helper'

class Make10Test < Test::Unit::TestCase
  def test_solve
    ret = Make10.solve(1, 2, 3, 4)
    assert_equal("1+2+3+4", ret);
  end
end
