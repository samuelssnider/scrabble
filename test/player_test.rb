gem 'minitest'
require_relative '../lib/player'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PlayerTest < Minitest::Test
  def test_player_exists
    play = Player.new("Bob")
    refute_nil play
    assert_equal "Bob", play.name
  end
end
