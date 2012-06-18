class RockPaperScissors
  
  attr_reader(:play)

  def initialize
    @play = ""
  end
  
  def play (arg1, arg2)
    if arg1 == arg2
      @play = "Tie, throw again..."
    end
    
    rk = "rock"
    pa = "paper"
    sc = "scissors"
    
    if arg1 == rk 
	if arg2 == pa
          @play = pa
        elsif arg2 == sc
          @play = rk
	end 

    elsif arg1 == pa
        if arg2 == sc
          @play = sc
        elsif arg2 == rk
          @play = rk
        end

    elsif arg1 ==  sc 
      if arg2 == rk
        @play = rk
         elsif arg2 == pa
           @play = sc
         end

     end
  end      
end  
