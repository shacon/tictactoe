class Game

require 'board'
require 'player'
  
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
  #returns true if there is a tie
  board.all? { |place| place.class == place[0].class }
  end
 
  def decide_winner(board)

 #|| check_for_column_win(board) || check_for_diag_win(board)

    if  check_for_row_win(board)== true
      winner = get_rows(board).select { |item| check_array_equal(item) == true }[0][0]
      current_player(winner)
      return @current_player
  #  elsif row true
   #   do this
    #  return @current_player
    else    
    return false
    end
  end

 # def play  
  #  get_names
   # decide_first_player
    #while check_for_win == false && check_for_tie == false
     # get_choice
      #if @current_player = x
       # add_x_board(choice)
      #else
       # add_y_board(choice)
      #end
      #switch_player
    #end

    #if check_for_win == true
   # winner = 
   # end

    #if check_for_tie == true
     # puts "This game is a tie. Play again?"
      #response = $stdin.gets.chomp.downcase
      #if response.starts_with?('y')
       # play
      #else
       # puts "Goodbye"
      #end
  
    

end
  



