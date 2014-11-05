require_relative 'game'
require_relative 'input'
require_relative 'output'


game = Game.new([1, 2, 3, 4, 5, 6, 7, 8, 9], Input.new, Output.new)
game.play

