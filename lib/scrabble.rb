require './lib/player'
class Scrabble
  attr_reader :players


  def initialize
    # @players = [player]
    @point_values ={
              "A"=>1, "B"=>3, "C"=>3, "D"=>2,
              "E"=>1, "F"=>4, "G"=>2, "H"=>4,
              "I"=>1, "J"=>8, "K"=>5, "L"=>1,
              "M"=>3, "N"=>1, "O"=>1, "P"=>3,
              "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
              "U"=>1, "V"=>4, "W"=>4, "X"=>8,
              "Y"=>4, "Z"=>10
            }
  end

  # def player_turn(player, word)
  #   player.score += word.score
  # end


  def score(word)
    letters = word.chars
    total_score = letters.map do |letter|
      @point_values[letter.upcase].to_i
    end
    # binding.pry
    sum = 0
    total_score.each do |score|
      sum += score
      # binding.pry
    end
    sum
  end

  def score_with_multipliers(word, letter_mult, mult_tot = 1)
    letters = word.chars
    letter_mult
    if letter_mult.length != letters.length
      puts "multiplication array doesn't match word length"
    end
    score_array = []
    letters.each_with_index do |letter, index|
      score_array << @point_values[letter.upcase] * letter_mult[index]
    end
    sum = 0
    score_array.each do |score|
      sum += score
    end
    sum * mult_tot
  end

    # def add_player(player)
    #   person = Player.new(player)
    #   @players << person
    # end


  # def point_values
  #
  # end
end
