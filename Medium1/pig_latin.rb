class PigLatin
  def self.translate(string)
    string = string.split
    result = ""

    string.each do |word|
      if word =~ /\A([aeiou]|xr|yt).+\Z/
        result << "#{word}" + "ay"
      elsif word =~ /\A(ch|thr|th|sch|.*qu|[^aeiou]).+\Z/
        a, b, c = word.split(/\A(ch|thr|th|sch|.*qu|[^aeiou])/)
        result << "#{c}" + "#{b}" + "ay"
      end
      result << " " if string.size > 1
    end
    
    result.strip
  end
end

