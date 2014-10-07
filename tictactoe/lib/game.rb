
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
  
  def get_rows(board)
    rows = board.each_slice(3).to_a
  end

  def check_array_equal(arr)
    arr.all? { |item| item == arr[0] }
  end

  def check_for_win(board)
    check_for_row_win(board) || check_for_column_win(board) || check_for_diag_win(board)
  end
  
  def check_for_row_win(board)   
    get_rows(board).any? { |row| check_array_equal(row) }
  end
   
  def get_columns(board)
    rows = get_rows(board)
    columns = Array.new
    columns << rows.map { |i| i[rows.length-1] } 
    columns << rows.map { |i| i[rows.length-2] }
    columns << rows.map { |i| i[rows.length-3] }
  end

  def get_diags(board)
    diag_arr = Array.new
    rows = get_rows(board)
    make_diag_arr = 
    rows.each_with_index { |row, index| diag_arr << row[index] }
    rows.reverse.each_with_index { |row, index| diag_arr << row[index] }
    diags = diag_arr.each_slice(3).to_a 
  end

  def check_for_column_win(board)
    get_columns(board).any? { |column| check_array_equal(column) }
  end

  def check_for_diag_win(board)
    get_diags(board).any? { |diag| check_array_equal(diag) }
  end  

  def check_for_tie(board)
    if check_for_win(board) == false and board.all? { |place| place.class == String }
      true
    else
      false
    end
  end
 
  def decide_winner(board)
    if  check_for_row_win(board) == true
      winner = get_rows(board).select { |item| check_array_equal(item) == true }[0][0]
      @current_player = winner
      return @current_player
    elsif check_for_column_win(board) == true
      winner = get_columns(board).select { |item| check_array_equal(item) == true }[0][0]
      @current_player = winner
      return @current_player	
    elsif check_for_diag_win(board) == true
      winner = get_diags(board).select { |item| check_array_equal(item) == true }[0][0]
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
    while check_for_win(@board.arr) == false && check_for_tie(@board.arr) == false
      get_choice
      if @current_player == @xplayer
        @board.add_x_board(@choice)
      else
        @board.add_o_board(@choice)
      end
      switch_player
    end
    if check_for_win(@board.arr) == true
    "#{@current_player}, you won! Play again?"
    end
    if check_for_tie(@board.arr) == true
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
  



