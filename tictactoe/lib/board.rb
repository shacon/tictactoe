
class Board
  attr_accessor :arr
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
  
  def print_board 
    puts "   |   |   "
    puts " #{@arr[0]} | #{@arr[1]} | #{@arr[2]} "
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts " #{@arr[3]} | #{@arr[4]} | #{@arr[5]} "
    puts "   |   |   " 
    puts "-----------"
    puts "   |   |   "
    puts " #{@arr[6]} | #{@arr[7]} | #{@arr[8]} "
    puts "   |   |   "   
  end


  def add_x_board(choice)
    @arr[(choice - 1)] = 'X'    
  end
 
  def add_o_board(choice)
    @arr[(choice - 1)] = 'O'

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
    @board.get_rows.any? { |row| check_array_equal(row) }
  end
   
  def get_columns
    rows = @board.get_rows
    columns = Array.new
    columns << rows.map { |i| i[rows.length-1] } 
    columns << rows.map { |i| i[rows.length-2] }
    columns << rows.map { |i| i[rows.length-3] }
  end

  def get_diags(diags)
    diag_arr = Array.new
    rows = @board.get_rows
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

  def check_for_tie(board)
    if check_for_win(board) == false and board.all? { |place| place.class == String }
      true
    else
      false
    end
  end
 


  end


  # def check_for_win
  # checks to see if a player has won
  # if arr[0..2] == ['X', 'X', 'X']





  

 
