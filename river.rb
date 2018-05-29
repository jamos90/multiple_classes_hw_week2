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

 def fish_count(river)
   fish_count = 0
   for fish in river.fish_in_river()
     fish_count += 1
   end
   return fish_count
 end

end
