
require_relative 'player'
require_relative 'board'
require_relative 'output'
require_relative 'input'
class Game 

  attr_accessor :xplayer, :oplayer, :current_player, :choice, :input, :output

  def initialize(board, input, output)
    @board = board
    @input = input
    @output = output
  end 
 
  def get_names
    @output.puts("Who would like to be X? (name)") #Go over this code, rewrite it so tests can be written with doubles, etcs
    xplayer_name = @input.gets.chomp   # needs to be instance variable
    @output.puts "Who would like to be O? (name)"
    oplayer_name = @input.gets.chomp
    @xplayer = Player.new(xplayer_name)
    @oplayer = Player.new(oplayer_name)
  end

  def decide_first_player 
    #chooses xplayer or yplayer to go first
    var = rand(2)
    if var == 1
      @output.puts "#{@xplayer.name}, you go first" 
      @current_player = @xplayer
    else
      @output.puts "#{@oplayer.name}, you go first"
      @current_player = @oplayer
    end
  end
 
  def current_player 
    @current_player = current_player
  end

  def ask_choice
    @output.puts " #{@current_player.name}, choose the spot on the board you would like to take "
  end

  def get_choice
    @choice = @input.gets.chomp.to_i
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
      ask_choice
      choice = get_choice
      place_move(choice)
      switch_player
    end
    if @board.check_for_win == true
      token = @board.decide_winner
     @output.puts "#{token}, you won! Play again?"
    end
    if @board.check_for_tie == true
      @output.puts "This game is a tie. Play again?"
    end
    response = @input.gets.chomp.downcase
    if response.start_with?('y')
      play
    else
      @output.puts "Goodbye"
    end
  end
    
end
  



