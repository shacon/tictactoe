require 'game'

describe 'Game class' do

  it "asks player's names" do
    mock_board = double("board")
    input = StringIO.new("Alice\nBob\n")
    output = StringIO.new('', 'w')
    game = Game.new(mock_board, input, output)
    # Send mock data to stdin, print out to a custom stream to check output values against
    game.get_names
    output.string.should eq("Who would like to be X? (name)\nWho would like to be O? (name)\n")    
  end

  it 'gets x players name' do
    mock_board = double("board")
    input = StringIO.new("anna\nbob\n")
    output = StringIO.new('', 'w')
    game = Game.new(mock_board, input, output)
    game.get_names
    game.xplayer.name.should == 'anna'
  end


  it 'gets the players choice' do
    mock_board = double("board")
    input = StringIO.new("1")
    output = StringIO.new('', 'w')
    game = Game.new(mock_board, input, output)
    game.get_choice
    game.choice.should == 1
  end

  # it 'decides the first player' do
  #   #NEEDS TO CHECK THAT PUTS STATEMENT
  #   mock_board = double("board")
  #   input = StringIO.new("bob\namy\n")
  #   output = double('output')
  #   game = Game.new(mock_board, input, output)
  #   @output.should receive()
  #   game.decide_first_player
  #   end

  it 'asks the player for a choice' do
    mock_player = double('player', :name => nil)
  end

  #write the test for get player's names to see wheplayersther 
  it 'places a move on the board' do
    mock_board = double("board")
    input = StringIO.new('3')
    output = StringIO.new('', 'w')
    g = Game.new(mock_board, input, output)
    g.current_player = @xplayer
    mock_board.should receive(:add_x_board).with(3)
    g.place_move(3)
  end

  it 'places a move on the board' do
   mock_board = double("board")
   input = StringIO.new('4')
   output = StringIO.new('', 'w')
   g = Game.new(mock_board, input, output)
   g.current_player = 'O'
   mock_board.should receive(:add_o_board).with(4)
   g.place_move(4)
 end


  
  #it 'gets the choice'
    #tests that this method takes the user input and creates an instance variable 
 # end
 # it 'gets the players names' do
    
  #  expect().to have_received(:).with("Who would like to be player " + token + "?")

  it 'switches the players' do
    mock_board = double("board")
    input = double('input')
    output = double('output')
    g = Game.new(mock_board, input, output)
    g.current_player = @xplayer
    expect(g.switch_player).to eq(@oplayer)
  end

       
end
