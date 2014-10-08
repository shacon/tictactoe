
class Board
  attr_accessor :arr
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  
  def print_board 
    puts "   |   |   "
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "   |   |   " 
    puts "-----------"
    puts "   |   |   "
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    puts "   |   |   "   
  end


  def add_x_board(choice)
    @board[(choice - 1)] = 'X'    
  end
 
  def add_o_board(choice)
    @board[(choice - 1)] = 'O'

  end

  def get_rows
    @board.each_slice(3).to_a
  end

def check_array_equal(arr)
    arr.all? { |item| item == arr[0] }
  end

  def check_for_win
    check_for_row_win || check_for_column_win || check_for_diag_win
  end
  
  def check_for_row_win   
    get_rows.any? { |row| check_array_equal(row) }
  end
   
  def get_columns
    rows = get_rows
    columns = Array.new
    columns << rows.map { |i| i[rows.length-1] } 
    columns << rows.map { |i| i[rows.length-2] }
    columns << rows.map { |i| i[rows.length-3] }
  end

  def get_diags
    diag_arr = Array.new
    rows = get_rows
    make_diag_arr = 
    rows.each_with_index { |row, index| diag_arr << row[index] }
    rows.reverse.each_with_index { |row, index| diag_arr << row[index] }
    diags = diag_arr.each_slice(3).to_a 
  end

  def check_for_column_win
    get_columns.any? { |column| check_array_equal(column) }
  end

  def check_for_diag_win
    get_diags.any? { |diag| check_array_equal(diag) }
  end  

  def check_for_tie
    if check_for_win == false and @board.all? { |place| place.class == String }
      true
    else
      false
    end
  end
 


  end


  # def check_for_win
  # checks to see if a player has won
  # if arr[0..2] == ['X', 'X', 'X']





  

 
