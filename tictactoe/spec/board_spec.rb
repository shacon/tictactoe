require 'board'

describe 'Board class' do

  before(:each) do
    @board = Board.new
  end

  it 'gets rows' do
  expect(@board.get_rows).to eq([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
  end


  it 'changes the array at index to X' do
  @board.add_x_board(1).should == ['X', 2, 3, 4, 5, 6, 7, 8, 9] 
  end

  it 'changes the array at index to 0' do
  expect(@board.add_o_board(1)).to eq(['O', 2, 3, 4, 5, 6, 7, 8, 9])
  end

  it 'changes the array at index to x' do 
  @board.add_o_board(7).should == [ 1, 2, 3, 4, 5, 6, 'O', 8, 9 ]
  end

  it 'checks to see whether all items in an array are identical' do
  expect(@board.check_array_equal(['X', 'X', 'X'])).to eq(true)
  end

  it 'checks for a win' do
  @board.add_o_board(1)
  @board.add_o_board(4)
  @board.add_o_board(7)
  expect(@board.check_for_win).to eq(true)
  end

  it 'checks for a winner by row' do
    expect(@board.check_for_row_win).to eq(false)
  end

  it 'checks for a winner by row' do
    @board.add_x_board(7)
    @board.add_x_board(8)
    @board.add_x_board(9)
    @board.check_for_row_win.should == true
  end 

  it 'checks for a winner by row' do
    @board.add_x_board(8)
    @board.check_for_row_win.should == false
  end  
    
  it 'checks for a winner by column' do
    @board.add_x_board(1)
    @board.add_x_board(4)
    @board.add_x_board(7)
    @board.check_for_column_win.should == true
  end

  it 'checks for a winner by column' do
    @board.add_o_board(2)
    @board.add_o_board(5)
    @board.add_o_board(8)
    @board.check_for_column_win.should == true
  end

  it 'checks for a winner by column' do
    @board.add_x_board(9)
    @board.add_x_board(5)
    @board.check_for_column_win.should == false
  end

  it 'checks for a winner by diagonal' do
    @board.add_x_board(1)
    @board.add_x_board(5)
    @board.add_x_board(9)
    @board.check_for_diag_win.should == true
  end

  it 'checks for a winner by diagonal' do
    @board.add_x_board(2)
    @board.add_x_board(5)
    @board.add_x_board(8)
    @board.check_for_diag_win.should == false
  end

  it 'checks for a winner by diagonal' do
    @board.add_x_board(3)
    @board.add_x_board(5)
    @board.add_x_board(7)
    @board.check_for_diag_win.should == true
  end

  it 'checks for a tie' do
    @board.add_x_board(1)
    @board.add_o_board(2)
    @board.add_o_board(3)
    @board.add_o_board(4)
    @board.add_x_board(5)
    @board.add_x_board(6)
    @board.add_x_board(7)
    @board.add_o_board(8)
    @board.add_o_board(9)
    @board.check_for_tie.should == true
  end

  it 'decides row winner' do
    @board.add_x_board(1)
    @board.add_x_board(2)
    @board.add_x_board(3)
    expect(@board.decide_winner).to eq('X')
    end  
 
  it 'decides row winner' do 
    @board.add_o_board(4)
    @board.add_o_board(5)
    @board.add_o_board(6)
    @board.decide_winner.should == 'O'
    end
 
  it 'decides column winner' do
    @board.add_x_board(2)
    @board.add_x_board(5)
    @board.add_x_board(8)
    @board.decide_winner.should == 'X'
    end

  it 'decides column winner' do
    @board.add_o_board(3)
    @board.add_o_board(6)
    @board.add_o_board(9)
    @board.decide_winner.should == 'O'
    end
 
  it 'decides diag winner' do
    @board.add_o_board(3)
    @board.add_o_board(5)
    @board.add_o_board(7)
    @board.decide_winner.should == 'O'
    end
 

 
end



