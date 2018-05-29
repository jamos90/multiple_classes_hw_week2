require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Sun Bear")
    @river = River.new("Amazon")
  end

  def test_bear_name
    assert_equal("Yogi",@bear.name)
  end

  def test_bear_tpye
    assert_equal("Sun Bear", @bear.type)
  end

  def test_bear_stomach_contents
    assert_equal(0, @bear.stomach_contents())
  end

  def test_roar
    assert_equal("roar", @bear.roar("roar"))
  end

  def test_remove_fish_from_river
    @river.add_fish_to_river(@fish1)
    @river.remove_fish_from_river(@fish1)
    @bear.add_fish_to_stomach(@fish1)
    assert_equal(0, @river.check_how_many_fish())
    assert_equal(1, @bear.stomach_contents())
  end

  def test_food_in_stomach
    @river.add_fish_to_river(@fish1)
    @bear.add_fish_to_stomach(@fish1)
    assert_equal(1, @bear.food_in_stomach(@river))
  end

end
