class Bear

  attr_reader :name , :type


  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_contents
    return @stomach.length()
  end

  def roar(roar)
    return "#{roar}"
  end

  def remove_fish_from_river(fish)
    return remove_fish_from_river(fish)
  end

  def food_in_stomach()
    
  end

end
