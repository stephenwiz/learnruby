class SillyStuff

  def initialize
   @steve_hash = {
      "alto    " => 1972,
      "tenor   " => 1961,
      "baritone" => 1979
    }
    puts @steve_hash
  end

  def sillyname
    @name = "Steve"

  end

  def stuff
    x = 2500
    y = 5000
    z = 7500
    return x, y, z
  end

  myname = SillyStuff.new
#  puts myname

  myname.stuff.each {|key | puts "#{key}"}



end

