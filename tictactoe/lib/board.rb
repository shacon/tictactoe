
class Board
 
  def arr
	@arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
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
  return @arr    
  end
 
  def add_o_board(choice)
  @arr[(choice - 1)] = 'O'
  return @arr
  end


  end


  # def check_for_win
  # checks to see if a player has won
  # if arr[0..2] == ['X', 'X', 'X']
end

#question about @variables,
 # see code here;
#https://github.com/ryanb/ruby-warrior/blob/master/lib/ruby_warrior/floor.rb

#understand what these variables do

#For game:

 #  how to incorporate $stdin into a test

  # also, what is the difference between $stdin and STDIN

  #where to put the array and how to access it 
  
  #if I have different classes, can I call a method from one class when I am in another class?



 
