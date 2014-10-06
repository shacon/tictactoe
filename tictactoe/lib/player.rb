

require_relative 'game'
require_relative 'board'
class Player



  def get_names
    puts "Who would like to be X? (name)" 
    @xplayer = $stdin.gets.chomp   # needs to be instance variable
    puts "Who would like to be Y? (name)"
    @yplayer = $stdin.gets.chomp
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
      puts "#{@xplayer}, you go first" 
      'x'
    else

      puts "#{@yplayer}, you go first"
      'y'
    end
  end

  def switch_player
    if @current_player == 'X'
      @current_player == 'O'
    else
      @current_player == 'X'
    end
  end

end

  
  

  




