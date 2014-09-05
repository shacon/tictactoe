require 'board'

describe 'board class' do
  it 'prints a tic tac toe board' do
  board = Board.new
  expected = 
 "    |   |   \n
    1 | 2 | 3 \n
      |   |   \n
   -----------\n
      |   |   \n
    4 | 5 | 6 \n
      |   |   \n
   -----------\n
      |   |   \n
    7 | 8 | 9 \n
      |   |   "end
  expect(board.print_board).to include(expected)   
  end

  it 'changes the array at index to X' do
  board = Board.new
  board.add_x_board(1).should == ['X', 2, 3, 4, 5, 6, 7, 8, 9] 
  end

  it 'changes the array at index to 0' do
  board = Board.new 
  board.add_o_board(1).should  == ['O', 2, 3, 4, 5, 6, 7, 8, 9]
  end

end
