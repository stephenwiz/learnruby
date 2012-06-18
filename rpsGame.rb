require ("./rockpaperscissors.rb")

puts ('1 - Two player mode (two human players)')
puts ('2 - Single player mode (human against computer)')
puts ('3 - Computer only')
$stdout.write('Enter game mode:     ')


gamemode = $stdin.gets.chomp
$stdout.puts("you said:  #{gamemode}")

throw = ["rock", "paper","scissors"]

if gamemode == "1"
  $stdout.write('Player One, what is your move?   ')
  hand1 = $stdin.gets.chomp
  $stdout.puts("you chose:  #{hand1}")

  $stdout.write('Player Two, what is your move?   ')
  hand2 = $stdin.gets.chomp
  $stdout.puts("you chose:  #{hand2}")

  rps=RockPaperScissors.new
  winner = rps.play(hand1 ,hand2)
  puts ("and the winner is...   #{winner}")
  puts ('')

elsif gamemode =="2"
  $stdout.write('Player One, what is your move?   ')
  hand1 = $stdin.gets.chomp
  $stdout.puts("you chose:  #{hand1}")

  puts("Computer   One, two three...")
    hand2 = throw[rand(throw.size)]
    puts hand2

    rps=RockPaperScissors.new
    winner = rps.play(hand1 ,hand2)
    puts ("and the winner is...   #{winner}")
    puts ('')

elsif gamemode == "3"

  i=1
  until i >= 10
    puts("One, two three...")
    hand1 = throw[rand(throw.size)]
    puts hand1

    hand2 = throw[rand(throw.size)]
    puts hand2

    if hand1 == hand2
      puts ('tie, throw again')
      puts ""
    else
      rps=RockPaperScissors.new
      winner = rps.play(hand1 ,hand2)
      puts ("and the winner is...   #{winner}")
      puts ('')
      i += 1
    end
  end
else
  puts ("Error some how")
end
