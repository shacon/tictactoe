require 'board'

describe 'Board class' do


  it 'changes the array at index to X' do
  board = Board.new
  board.add_x_board(1).should == ['X', 2, 3, 4, 5, 6, 7, 8, 9] 
  end

  it 'changes the array at index to 0' do
  board = Board.new 
  board.add_o_board(1).should  == ['O', 2, 3, 4, 5, 6, 7, 8, 9]
  end

  it 'changes the array at index to x' do 
  board = Board.new
  board.add_o_board(7).should == [ 1, 2, 3, 4, 5, 6, 'O', 8, 9 ]
  end

end


