require("minitest/autorun")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
    @fish1 = Fish.new("Steve")
    @fish2 = Fish.new("Ben")
    @bear = Bear.new("Yogi", "Sun Bear")

  end

  def test_river_name
    assert_equal("Amazon",@river.name)
  end

  def test_fish_in_river
    assert_equal(0,@river.check_how_many_fish)

  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.check_how_many_fish())
  end

  def test_remove_fish_from_river
    @river.add_fish_to_river(@fish1)
    @river.remove_fish_from_river(@fish1)
    assert_equal(0, @river.check_how_many_fish)
  end

  def test_fish_count
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.fish_count(@river))
  end


end
