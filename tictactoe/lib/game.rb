
require_relative 'player'
require_relative 'board'



class Game 

 
  def get_names
    puts "Who would like to be X? (name)" 
    xplayer_name = $stdin.gets.chomp   # needs to be instance variable
    puts "Who would like to be O? (name)"
    oplayer_name = $stdin.gets.chomp

    @xplayer = Player.new(xplayer_name)
    @oplayer = Player.new(oplayer_name)
  end

  def initialize
    
    @board = Board.new
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

  def get_choice
    @board.print_board
    puts " #{@current_player.name}, choose the spot on the board you would like to take "
    @choice = $stdin.gets.chomp.to_i
  end
  
  def current_player 
    @current_player = current_player
  end
  


  
  def decide_winner(board)
    if  check_for_row_win(board) == true
      winner = @board.get_rows.select { |item| check_array_equal(item) == true }[0][0]
      winner
      return @current_player
    elsif check_for_column_win(board) == true
      winner = get_columns(board).select { |item| check_array_equal(item) == true }[0][0]
      winner
      return @current_player	
    elsif check_for_diag_win(board) == true
      winner = get_diags(board).select { |item| check_array_equal(item) == true }[0][0]
      winner
    else    
    return false
    end
  end

 def switch_player
    if @current_player == @xplayer
      @current_player = @oplayer
    else
      @current_player = @xplayer
    end
  end

 def play  
    get_names
    decide_first_player
    @board = Board.new
    while @board.check_for_win == false && check_for_tie(@board) == false
      choice = get_choice
      if @current_player == @xplayer
        @board.add_x_board(choice)
      else
        @board.add_o_board(choice)
      end
      switch_player
    end
    if check_for_win(@board) == true
      token = decide_winner(@board)
    "#{token}, you won! Play again?"
    end
    if check_for_tie(@board) == true
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
  



