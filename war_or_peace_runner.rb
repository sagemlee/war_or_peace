require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/game'
require 'pry'

# suits = [hearts, spades, diamonds, clubs]
# values = ["ace", "2","3","4","5","6","7","8","9","10","jack","queen","king"]
# ranks = [2,3,4,5,6,7,8,9,10,11,12,13,14]

standard_deck = []
standard_deck << card1 = Card.new(:heart, 'Ace', 14)
standard_deck << card2 = Card.new(:heart, '2', 2)
standard_deck << card3 = Card.new(:heart, '3', 3)
standard_deck << card4 = Card.new(:heart, '4', 4)
standard_deck << card5 = Card.new(:heart, '5', 5)
standard_deck << card6 = Card.new(:heart, '6', 6)
standard_deck << card7 = Card.new(:heart, '7', 7)
standard_deck << card8 = Card.new(:heart, '8', 8)
standard_deck << card9 = Card.new(:heart, '9', 9)
standard_deck << card10 = Card.new(:heart, '10', 10)
standard_deck << card11 = Card.new(:heart, 'Jack', 11)
standard_deck << card12 = Card.new(:heart, 'Queen', 12)
standard_deck << card13 = Card.new(:heart, 'King', 13)

standard_deck << card14 = Card.new(:diamond, 'Ace', 14)
standard_deck << card15 = Card.new(:diamond, '2', 2)
standard_deck << card16 = Card.new(:diamond, '3', 3)
standard_deck << card17 = Card.new(:diamond, '4', 4)
standard_deck << card18 = Card.new(:diamond, '5', 5)
standard_deck << card19 = Card.new(:diamond, '6', 6)
standard_deck << card20 = Card.new(:diamond, '7', 7)
standard_deck << card21 = Card.new(:diamond, '8', 8)
standard_deck << card22 = Card.new(:diamond, '9', 9)
standard_deck << card23 = Card.new(:diamond, '10', 10)
standard_deck << card24 = Card.new(:diamond, 'Jack', 11)
standard_deck << card25 = Card.new(:diamond, 'Queen', 12)
standard_deck << card26 = Card.new(:diamond, 'King', 13)

standard_deck << card27 = Card.new(:spade, 'Ace', 14)
standard_deck << card28 = Card.new(:spade, '2', 2)
standard_deck << card29 = Card.new(:spade, '3', 3)
standard_deck << card30 = Card.new(:spade, '4', 4)
standard_deck << card31 = Card.new(:spade, '5', 5)
standard_deck << card32 = Card.new(:spade, '6', 6)
standard_deck << card33 = Card.new(:spade, '7', 7)
standard_deck << card34 = Card.new(:spade, '8', 8)
standard_deck << card35 = Card.new(:spade, '9', 9)
standard_deck << card36 = Card.new(:spade, '10', 10)
standard_deck << card37 = Card.new(:spade, 'Jack', 11)
standard_deck << card38 = Card.new(:spade, 'Queen', 12)
standard_deck << card39 = Card.new(:spade, 'King', 13)

standard_deck << card40 = Card.new(:club, 'Ace', 14)
standard_deck << card41 = Card.new(:club, '2', 2)
standard_deck << card42 = Card.new(:club, '3', 3)
standard_deck << card43 = Card.new(:club, '4', 4)
standard_deck << card44 = Card.new(:club, '5', 5)
standard_deck << card45 = Card.new(:club, '6', 6)
standard_deck << card46 = Card.new(:club, '7', 7)
standard_deck << card47 = Card.new(:club, '8', 8)
standard_deck << card48 = Card.new(:club, '9', 9)
standard_deck << card49 = Card.new(:club, '10', 10)
standard_deck << card50 = Card.new(:club, 'Jack', 11)
standard_deck << card51 = Card.new(:club, 'Queen', 12)
standard_deck << card52 = Card.new(:club, 'King', 13)

deck1 = Deck.new(standard_deck.shuffle)
deck2 = Deck.new(standard_deck.shuffle)

player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)
turn = Turn.new(player1, player2)

game = Game.new

game.start





#
# p "Welcome to War! (or Peace) This game will be played with 52 cards."
# p "The players today are Megan and Aurora."
# p "Type 'GO' to start the game!"
# p "------------------------------------------------------------------"
#
# gets.chomp
#
# if gets.chomp = "GO"
