
require_relative 'player'
require_relative 'board'

class Game 

  attr_accessor :xplayer, :current_player 

  def initialize(board)
    @board = board
 
  end 
 
  def get_names
    puts "Who would like to be X? (name)" 
    xplayer_name = $stdin.gets.chomp   # needs to be instance variable
    puts "Who would like to be O? (name)"
    oplayer_name = $stdin.gets.chomp

    @xplayer = Player.new(xplayer_name)
    @oplayer = Player.new(oplayer_name)
  end

  def decide_first_player 
    #chooses xplayer or yplayer to go first
    var = rand(2)
    if var == 1
      puts "#{@xplayer.name}, you go first" 
      @current_player = @xplayer
    else
      puts "#{@oplayer.name}, you go first"
      @current_player = @oplayer
    end
  end
 
  def current_player 
    @current_player = current_player
  end

  def get_choice
    puts " #{@current_player.name}, choose the spot on the board you would like to take "
    @choice = $stdin.gets.chomp.to_i
  end
  
 def switch_player
    if @current_player == @xplayer
      @current_player = @oplayer
    else
      @current_player = @xplayer
    end
  end

  def place_move(choice) 
   if @current_player == @xplayer
        @board.add_x_board(choice)
      else
        @board.add_o_board(choice)
      end
  end

 def play  
    get_names
    decide_first_player
    @board = Board.new
    while @board.check_for_win == false && @board.check_for_tie == false
      @board.print_board
      choice = get_choice
      place_move(choice)
      switch_player
    end
    if @board.check_for_win == true
      token = @board.decide_winner
     puts "#{token}, you won! Play again?"
    end
    if @board.check_for_tie == true
      puts "This game is a tie. Play again?"
    end
    response = $stdin.gets.chomp.downcase
    if response.start_with?('y')
      play
    else
      puts "Goodbye"
    end
  end
    
end
  



