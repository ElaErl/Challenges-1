class Anagram
  def initialize(word)
    @letters = word.downcase.chars
  end

  def match(list_of_words)
    result = []
    list_of_words.each do |possible_match|
      possible_m = possible_match.downcase.chars
      result << possible_match if (possible_m.sort == @letters.sort) && (possible_m != @letters)
    end
    result
  end
end