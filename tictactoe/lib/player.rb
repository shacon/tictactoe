class Player

require 'game'
require 'board'

  def current_player(n)
    @current_player = n
  end

  def get_names
    puts "Who would like to be X? (name)"
    xplayer = $stdin.gets.chomp
    puts "Who would like to be Y? (name)"
    yplayer = $stdin.gets.chomp
  end

  
  def get_choice
    print_board
    puts "Please choose the spot on the board you would like to take "
    @choice = $stdin.gets.chomp.to_i
  end

  def decide_first_player 
    #chooses xplayer or yplayer to go first
    var = rand(2)
    if var == 1
      puts "#{xplayer}, you go first" 
      current_player('x')
    else
      puts "#{yplayer}, you go first"
      current_player('y')
    end
  end

  def switch_player
    if @current_player = 'x'
      current_player('y')
    else
      current_player('x')
    end
  end

   
  


 #decide which one is true, take that and then  
  #if column true find the row that is all the same and take the variable from the array
  #end 

end

  
  

  




