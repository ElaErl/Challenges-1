class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    size = (other_strand.size < @strand.size) ? (other_strand.size) : (@strand.size)
    result = 0
    @strand.each_char.with_index do |ch, ind|
      break if ind > (size - 1)
      result += 1 if ch != other_strand[ind]
    end
    result
  end
end


