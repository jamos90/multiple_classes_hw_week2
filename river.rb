class River

  attr_reader :name, :fish_in_river
  attr_writer :name, :fish_in_river

  def initialize(name)
    @name = name
    @fish_in_river = []
  end

 def check_how_many_fish
   @fish_in_river.count()
 end

 def add_fish_to_river(fish)
   @fish_in_river.push(fish)
 end

 def remove_fish_from_river(fish)
   @fish_in_river.delete(fish)
 end

end
