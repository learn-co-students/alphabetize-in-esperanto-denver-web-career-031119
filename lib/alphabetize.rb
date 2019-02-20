def alphabetize(sentence_array)
  alphabet = ["a", "b", "c", "ĉ", "d", "e", "f", "g", "ĝ", "h", "ĥ", "i", "j", "ĵ", "k", "l", "m", "n", "o", "p", "r", "s", "ŝ", "t", "u", "ŭ", "v", "z"]
  sentence_array.sort_by do |sentence|
    sentence.split('').map do |letter|
      alphabet.index(letter)
    end
  end
end
