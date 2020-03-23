require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'
require 'pry'



class GameTest < Minitest::Test

  def test_does_it_exist

    card1 = Card.new(:heart, 'Jack', 11)
    card2 = Card.new(:heart, '10', 10)
    card3 = Card.new(:heart, '9', 9)
    card4 = Card.new(:diamond, 'Jack', 11)
    card5 = Card.new(:heart, '8', 8)
    card6 = Card.new(:diamond, 'Queen', 12)
    card7 = Card.new(:heart, '3', 3)
    card8 = Card.new(:diamond, '2', 2)

    deck1 = Deck.new([card1, card2, card5, card8])
    deck2 = Deck.new([card3, card4, card6, card7])

    player1 = Player.new("Megan", deck1)
    player2 = Player.new("Aurora", deck2)

      game1 = Game.new

    assert_instance_of Game, game1
  end

  def test_it_has_readable_attributes
    skip
    game
  end

  def test_it_can_start
    skip

    p "Welcome to War! (or Peace) This game will be played with 52 cards.
  The players today are Megan and Aurora.
  Type 'GO' to start the game!
  ------------------------------------------------------------------"

assert_equal
  end

end
