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

  def add_fish_to_stomach(fish)
    return @stomach.push(fish)
  end

  def food_in_stomach(river)
    food_in_belly = 0
    for fish in river.fish_in_river()
      food_in_belly +=1
    end
    return food_in_belly
  end


end
