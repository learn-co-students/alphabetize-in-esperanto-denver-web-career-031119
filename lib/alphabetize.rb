def alphabetize(arr)
  # code here

  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"


  arr.sort_by do |word|
    #Divides each word into an array of letters
    word.split("").collect do |letter|
      #Creates an array of the indexes in the esperanto_alphabet
      esperanto_alphabet.index(letter) #Compares and sorts the array of indexes
    end
  end

end
