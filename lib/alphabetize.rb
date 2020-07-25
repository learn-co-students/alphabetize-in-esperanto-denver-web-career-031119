ESPERANTO_ALPHABET = " abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
SORTED_ALPHABET = " ABCDEFGHIJKLMNOPQRSTUVWXYZab"

def alphabetize(arr)
  translated = []
  arr.each do |expression|
    translated_expression = []
    expression.each_char do |char|
      translated_expression << SORTED_ALPHABET[ESPERANTO_ALPHABET.index(char)]
    end
    translated << translated_expression.join
  end
  
  sorted = translated.sort
  
  esperanto_return = []
  sorted.each do |expression|
    esperanto_expression = []
    expression.each_char do |char|
      esperanto_expression << ESPERANTO_ALPHABET[SORTED_ALPHABET.index(char)]
    end
    esperanto_return << esperanto_expression.join
  end
  
  return esperanto_return

  ##########################################################################################################
  # This was a first attempt using sort_by - it's a work in progress; left in for amusement.
  ##########################################################################################################
  
  longest_expression = arr.map { |expression| expression.length }.max
  
  sorted_arr = arr.sort_by do |expression|
    ESPERANTO_ALPHABET.index(expression[0])
  end
  
  outer_idx = 0
  
  character_number = 1
  final_sorted_arr = []
  
  while character_number < longest_expression
    while outer_idx < sorted_arr.length
      if outer_idx == sorted_arr.length - 1 ||
         sorted_arr[outer_idx][character_number] != sorted_arr[outer_idx + 1][character_number]
        final_sorted_arr << sorted_arr[outer_idx]
        outer_idx += 1
      else
        inner_idx = outer_idx + 2
        while inner_idx <= sorted_arr.length
          p outer_idx
          p inner_idx
          if inner_idx == sorted_arr.length || sorted_arr[outer_idx][character_number] != sorted_arr[inner_idx][character_number]
            inner_sort = sorted_arr[outer_idx...inner_idx].sort_by do |expression|
              ESPERANTO_ALPHABET.index(expression[character_number])
              
            end
            final_sorted_arr += inner_sort
            break
          else
            inner_idx += 1
          end
        end
        outer_idx = inner_idx
      end
    end
    character_number += 1
    p sorted_arr
    p final_sorted_arr
    if sorted_arr != final_sorted_arr
      sorted_arr = final_sorted_arr
    else
      break
    end
  end
  
  final_sorted_arr

end
