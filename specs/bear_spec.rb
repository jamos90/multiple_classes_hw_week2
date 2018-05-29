require("minitest/autorun")
require_relative("../bear.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Sun Bear")
  end

  def test_bear_name
    assert_equal("Yogi",@bear.name)
  end

end
