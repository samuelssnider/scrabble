gem 'minitest'

require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_multiple_letters
    assert_equal 4,
     Scrabble.new.score("ab")
    assert_equal 21, Scrabble.new.score("Jiffy")
  end

  def test_it_can_score_nothing
    assert_equal 0, Scrabble.new.score("")
  end

  def test_add_player_works
    s = Scrabble.new
    s.add_player("Nick")
    assert_equal 2, s.players.length
    assert_equal "Nick",  s.players[1]  
  end
end
