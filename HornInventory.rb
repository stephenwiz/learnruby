class HornInventory

  def initialize
    @horn_hash = {
      "soprano " => 1990,
      "alto    " => 1972,
      "tenor   " => 1961,
      "baritone" => 1979
    }
  end

  def list_horns
    @horn_hash.each {|horntype, hornyear| }
  end
  
  def get_year(year_val)
    @horn_hash.each do |horntype, hornyear|
      if hornyear == year_val.to_i
        return horntype, hornyear
      end
    end
  end
  
  x = HornInventory.new
  myHorns = HornInventory.new

  puts "The saxophone inventory is:"
  puts
  myHorns.list_horns.each {|horntype, hornyear| puts "#{horntype}  #{hornyear}"}
  puts
  
  puts "The 1961 year model is a:"
  hornlist = myHorns.get_year("1961")
  puts( "#{hornlist[0]}  #{hornlist[1]}")
  puts
  
end







