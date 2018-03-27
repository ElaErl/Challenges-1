class InvalidCodonError < ArgumentError; end

class Translation
  TRANSLATE = {"Methionine" => ['AUG'], "Phenylalanine" => ['UUU', 'UUC'],
    "Leucine" => ['UUA', 'UUG'], "Serine" => ['UCU', 'UCC', 'UCA', 'UCG'],
    "Tyrosine" => ['UAU', 'UAC'], "Cysteine" => ['UGU', 'UGC'],
    "Tryptophan" => ['UGG'], "STOP" => ['UAA', 'UAG', 'UGA']}

  def self.of_codon(codon)
    TRANSLATE.each do |key, value|
      return key if value.include?(codon)
    end
    raise InvalidCodonError
  end

  def self.of_rna(string)
    string.scan(/.../).each_with_object([]) do |codon, proteins|
      return proteins if of_codon(codon) == 'STOP'
      proteins << Translation.of_codon(codon)
    end
  end
end


