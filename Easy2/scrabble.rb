class Scrabble
  def initialize(word)
    @word = word.downcase
  end

  def score
    score = 0
    @word.each_char do |char|
      VALUES.each do |key, arr|
        




 VALUES = {
    1 => %w[a e i o u l n r s t],
    2 => %w[d g],
    3 => %w[b c m p],
    4 => %w[f h v w y],
    5 => %w[k],
    8 => %w[j x],
    10 => %w[q z]
  }