class Beastie_Boys


  def initialize

       @discog = {
      "Licensed to Ill             " => 1986,
      "Paul's Boutique             " => 1989,
      "Check Your Head             " => 1992,
      "Ill Communication           " => 1994,
      "Hello Nasty                 " => 1998,
      "To the 5 Boroughs           " => 2004,
      "The Mix-Up                  " => 2007,
      "Hot Sauce Committee Part Two" => 2011
      }
  end


  def albums
    puts
    @discog.each {|key, value | puts "#{key}  #{value}"}
  end

  def year(year_val)
    puts
    @discog.each { |key, value| puts ("#{key}  #{value}") if value ==  year_val.to_i }
  end

  def next(year)
    puts
    @discog.each do |key, value|
      next if value <= year
      puts ("#{key}  #{value}")
      break
    end
  end

  puts
  puts
  puts ('This is a Beastie Boys discography program')
  puts

  aa=Beastie_Boys.new

  loop do
    puts('Enter a year, "albums", "next" or "quit" to end: ')
    option_input = $stdin.gets.chomp
    puts("you said:  #{option_input}")

    if option_input == "albums"
      aa.albums
      puts
    elsif option_input == "next"
      aa.next(@year.to_i)
      puts
    elsif option_input == "quit"
      break
    else
      @year =  option_input
      aa.year(option_input)
      puts
    end
  end

end
























