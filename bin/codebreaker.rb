$LOAD_PATH  << File.expand_path('../../lib', __FILE__)
require 'codebreaker'

game = Codebreaker::Game.new(STDOUT)
game.start('1234')
while guess = gets.chomp
  game.guess(guess)
end