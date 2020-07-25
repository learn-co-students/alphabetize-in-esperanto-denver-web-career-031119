ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
def alphabetize(arr)
  arr.sort_by {|a| a.split("").collect{|letter|
    ESPERANTO_ALPHABET.index(letter)}}
end