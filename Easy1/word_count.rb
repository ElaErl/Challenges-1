class Phrase
  def initialize(string)
    @words = pure_words(string)
  end

  def pure_words(string)
    words = string.downcase.split(/[^'\w]+/).select{|word| word.match(/[a-z0-9]/)}
    words.map do |word|
      if word[0] == "'"
        word.gsub!(/\A'(.*)'\Z/, '\1')
      else
        word
      end
    end
  end

  def word_count
    result = Hash.new
    @words.each do |word|
      (result.include?(word)) ? (result[word] += 1) : (result[word] = 1)
    end
    result
  end
end
