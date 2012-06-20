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
    found = 0
    @discog.each do |key, value|
      if value ==  year_val.to_i
        puts ("#{key}  #{value}")
        found = 1
      end
    end

    if found != 1
      puts  "No album created that year."
    end
  end

  def next(year)
    puts
    @discog.each do |key, value|
      next if value <= year
      puts ("#{key}  #{value}")
      break
    end
  end

  def missing

    cumlative_yrs = Array.new
    album_yrs = Array.new
    missing_yrs = Array.new
    t = Time.now
    cur_yr = t.year

    @discog.each do |key, value|
      @first_yr = value
      break
    end

    j = 0       # create an array of all cumulative years
    cum_yrs = @first_yr
    while cum_yrs <= cur_yr
      cumlative_yrs[j] = cum_yrs
      cum_yrs = cum_yrs + 1
      j = j + 1
    end

    i = 0           # create an array of all the album years
    @discog.each do |key, value|
      album_yrs[i] = value
      i = i + 1
    end

    puts
    puts "The following years there were no recordings released"

    # use the "-" method to retrieve the difference between the two arrays
    missing_yrs = cumlative_yrs - album_yrs
    puts missing_yrs
  end

  def first
    puts
    @discog.each do |key, value|
      puts "#{key}  #{value}"
      @first_yr = value
      break
    end
  end

  def last
    len = @discog.length
    idx = 1
    @discog.each do |key, value|
      if idx == len
        puts "#{key}  #{value}"
      else
        idx = idx + 1
      end
    end
  end

  def count
    len = @discog.length
    puts ("Beastie boys released #{len} albums.")
  end

  puts
  puts
  puts ('This is a Beastie Boys discography program')
  puts

  aa=Beastie_Boys.new

  loop do
    puts('Enter a year, "albums", "next", "missing", "first" or "q" to end: ')
    option_input = $stdin.gets.chomp
    puts("you said:  #{option_input}")

    if option_input == "albums"
      aa.albums
      puts
    elsif option_input == "next"
      aa.next(@year.to_i)
      puts
    elsif option_input == "missing"
      aa.missing
      puts
    elsif option_input == "first"
      aa.first
      puts
    elsif option_input == "last"
      aa.last
      puts
    elsif option_input == "count"
      aa.count
      puts
    elsif option_input == "q"
      break
    else
      @year =  option_input
      aa.year(option_input)
      puts
    end
  end
end

















